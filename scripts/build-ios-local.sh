#!/bin/bash
set -e

# ============================================================================
# Local iOS Build & Upload to TestFlight
# ============================================================================
# Usage: ./scripts/build-ios-local.sh
#
# Requirements:
# - Flutter SDK installed
# - Xcode installed
# - App Store Connect API Key configured
#
# Setup:
# 1. Get your API Key from App Store Connect:
#    https://appstoreconnect.apple.com/access/integrations/api
# 2. Export these environment variables (or set them below):
#    export APP_STORE_CONNECT_KEY_ID="YourKeyID"
#    export APP_STORE_CONNECT_ISSUER_ID="YourIssuerID"
#    export APP_STORE_CONNECT_API_KEY_PATH="$HOME/.appstoreconnect/private_keys/AuthKey_YourKeyID.p8"
# ============================================================================

# Configuration - Set your values here or use environment variables
API_KEY_ID="${APP_STORE_CONNECT_KEY_ID:-YOUR_KEY_ID}"
ISSUER_ID="${APP_STORE_CONNECT_ISSUER_ID:-YOUR_ISSUER_ID}"
API_KEY_PATH="${APP_STORE_CONNECT_API_KEY_PATH:-$HOME/.appstoreconnect/private_keys/AuthKey_${API_KEY_ID}.p8}"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

echo -e "${CYAN}═══════════════════════════════════════════════════════════════${NC}"
echo -e "${CYAN}  📦 Local iOS Build & TestFlight Upload${NC}"
echo -e "${CYAN}═══════════════════════════════════════════════════════════════${NC}"
echo ""

# Validate configuration
if [ "$API_KEY_ID" = "YOUR_KEY_ID" ] || [ -z "$API_KEY_ID" ]; then
    echo -e "${RED}❌ Error: APP_STORE_CONNECT_KEY_ID not set${NC}"
    echo "   Set it as environment variable or edit this script"
    exit 1
fi

if [ "$ISSUER_ID" = "YOUR_ISSUER_ID" ] || [ -z "$ISSUER_ID" ]; then
    echo -e "${RED}❌ Error: APP_STORE_CONNECT_ISSUER_ID not set${NC}"
    echo "   Set it as environment variable or edit this script"
    exit 1
fi

if [ ! -f "$API_KEY_PATH" ]; then
    echo -e "${YELLOW}⚠️  API Key file not found at: $API_KEY_PATH${NC}"
    echo "   Checking alternative locations..."
    
    # Try to find the key file
    ALT_PATH="$HOME/private_keys/AuthKey_${API_KEY_ID}.p8"
    if [ -f "$ALT_PATH" ]; then
        API_KEY_PATH="$ALT_PATH"
        echo -e "${GREEN}✅ Found at: $API_KEY_PATH${NC}"
    else
        echo -e "${RED}❌ API Key file not found${NC}"
        echo "   Expected: ~/.appstoreconnect/private_keys/AuthKey_${API_KEY_ID}.p8"
        echo "   Or: ~/private_keys/AuthKey_${API_KEY_ID}.p8"
        echo ""
        echo "   To fix:"
        echo "   1. Download .p8 file from App Store Connect"
        echo "   2. mkdir -p ~/.appstoreconnect/private_keys"
        echo "   3. cp AuthKey_${API_KEY_ID}.p8 ~/.appstoreconnect/private_keys/"
        exit 1
    fi
fi

echo -e "${GREEN}✅ Configuration valid${NC}"
echo "   Key ID: $API_KEY_ID"
echo "   Issuer ID: $ISSUER_ID"
echo "   Key Path: $API_KEY_PATH"
echo ""

# Get version info
echo -e "${CYAN}📋 Version Info:${NC}"
VERSION=$(grep "version:" pubspec.yaml | head -1 | awk '{print $2}' | cut -d'+' -f1)
BUILD_NUMBER=$(grep "version:" pubspec.yaml | head -1 | awk '{print $2}' | cut -d'+' -f2)
echo "   Version: $VERSION"
echo "   Build: $BUILD_NUMBER"
echo ""

read -p "Continue with build? (y/n) " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo -e "${YELLOW}⚠️  Build cancelled${NC}"
    exit 0
fi

# Clean
echo ""
echo -e "${CYAN}🧹 Cleaning...${NC}"
flutter clean

# Get dependencies
echo ""
echo -e "${CYAN}📦 Getting dependencies...${NC}"
flutter pub get

# Build iOS
echo ""
echo -e "${CYAN}🔨 Building iOS IPA...${NC}"
flutter build ipa --release --export-options-plist=ios/ExportOptions.plist

# Check build output
IPA_PATH="build/ios/ipa"
if [ ! -d "$IPA_PATH" ]; then
    echo -e "${RED}❌ Build failed - IPA directory not found${NC}"
    exit 1
fi

IPA_FILE=$(find "$IPA_PATH" -name "*.ipa" -type f | head -1)
if [ -z "$IPA_FILE" ]; then
    echo -e "${RED}❌ Build failed - IPA file not found${NC}"
    exit 1
fi

IPA_SIZE=$(du -h "$IPA_FILE" | cut -f1)
echo -e "${GREEN}✅ Build successful: $IPA_FILE ($IPA_SIZE)${NC}"
echo ""

# Upload to TestFlight
echo -e "${CYAN}📤 Uploading to TestFlight...${NC}"
echo "   This may take a few minutes..."
echo ""

xcrun altool --upload-app \
    --type ios \
    --file "$IPA_FILE" \
    --apiKey "$API_KEY_ID" \
    --apiIssuer "$ISSUER_ID" \
    --verbose

UPLOAD_STATUS=$?

if [ $UPLOAD_STATUS -eq 0 ]; then
    echo ""
    echo -e "${GREEN}═══════════════════════════════════════════════════════════════${NC}"
    echo -e "${GREEN}  🎉 Upload Successful!${NC}"
    echo -e "${GREEN}═══════════════════════════════════════════════════════════════${NC}"
    echo ""
    echo "   Version: $VERSION ($BUILD_NUMBER)"
    echo "   IPA: $IPA_FILE"
    echo ""
    echo "   Check App Store Connect in 5-10 minutes:"
    echo "   https://appstoreconnect.apple.com/apps"
else
    echo ""
    echo -e "${RED}═══════════════════════════════════════════════════════════════${NC}"
    echo -e "${RED}  ❌ Upload Failed (Exit code: $UPLOAD_STATUS)${NC}"
    echo -e "${RED}═══════════════════════════════════════════════════════════════${NC}"
    echo ""
    echo "   Common fixes:"
    echo "   1. Check version/build number is unique"
    echo "   2. Verify API key permissions in App Store Connect"
    echo "   3. Check App Store Connect for any validation errors"
    exit $UPLOAD_STATUS
fi
