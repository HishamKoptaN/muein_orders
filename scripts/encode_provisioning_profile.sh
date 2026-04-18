#!/bin/bash
# Script to encode iOS Provisioning Profile for GitHub Actions
# Usage: ./scripts/encode_provisioning_profile.sh <path-to-.mobileprovision-file>

set -e

if [ -z "$1" ]; then
    echo "❌ Usage: $0 <path-to-.mobileprovision-file>"
    echo ""
    echo "📋 Steps:"
    echo "1. Download .mobileprovision from Apple Developer Portal"
    echo "2. Run: $0 ~/Downloads/Muein_Orders_ios_app_store.mobileprovision"
    echo "3. Copy the output and add as GitHub Secret: IOS_PROVISIONING_PROFILE_BASE64"
    exit 1
fi

PROFILE_PATH="$1"

if [ ! -f "$PROFILE_PATH" ]; then
    echo "❌ File not found: $PROFILE_PATH"
    exit 1
fi

echo "🔧 Encoding Provisioning Profile: $PROFILE_PATH"
echo ""
echo "📋 Profile Info:"
security cms -D -i "$PROFILE_PATH" | grep -E "(Name|TeamName|ApplicationIdentifierPrefix)" || true
echo ""

echo "📦 Base64 Encoded (copy this entire output):"
echo ""
base64 -i "$PROFILE_PATH"
echo ""

echo "✅ Done!"
echo ""
echo "🔐 Add this as GitHub Secret:"
echo "   Name: IOS_PROVISIONING_PROFILE_BASE64"
echo "   Value: (the base64 output above)"
