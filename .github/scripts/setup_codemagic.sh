#!/bin/bash

# Codemagic Setup Script
# This script helps configure Codemagic integration with GitHub

set -e

echo "🚀 Codemagic Setup Script"
echo "=========================="

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

print_step() {
    echo -e "${BLUE}[STEP]${NC} $1"
}

# Check if required tools are installed
check_dependencies() {
    print_step "Checking dependencies..."
    
    if ! command -v curl &> /dev/null; then
        print_error "curl is not installed"
        exit 1
    fi
    
    if ! command -v jq &> /dev/null; then
        print_warning "jq is not installed. Installing..."
        if [[ "$OSTYPE" == "darwin"* ]]; then
            brew install jq
        else
            sudo apt-get update && sudo apt-get install -y jq
        fi
    fi
    
    print_status "✅ Dependencies check completed"
}

# Validate Codemagic API token
validate_codemagic_token() {
    print_step "Validating Codemagic API token..."
    
    if [[ -z "$CODEMAGIC_API_TOKEN" ]]; then
        print_error "CODEMAGIC_API_TOKEN is not set"
        print_warning "Please set the environment variable or GitHub secret"
        exit 1
    fi
    
    # Test API connection
    RESPONSE=$(curl -s -w "%{http_code}" -H "Authorization: Bearer $CODEMAGIC_API_TOKEN" https://api.codemagic.io/apps)
    HTTP_CODE="${RESPONSE: -3}"
    BODY="${RESPONSE%???}"
    
    if [[ "$HTTP_CODE" == "200" ]]; then
        print_status "✅ Codemagic API token is valid"
        echo "📱 Found apps:"
        echo "$BODY" | jq -r '.data[] | "  - \(.appName) (ID: \(.id))"' 2>/dev/null || echo "$BODY"
    else
        print_error "❌ Invalid Codemagic API token (HTTP $HTTP_CODE)"
        exit 1
    fi
}

# Get app ID from user or validate existing one
get_app_id() {
    print_step "Configuring App ID..."
    
    if [[ -z "$CODEMAGIC_APP_ID" ]]; then
        print_warning "CODEMAGIC_APP_ID is not set"
        
        # Get available apps
        RESPONSE=$(curl -s -H "Authorization: Bearer $CODEMAGIC_API_TOKEN" https://api.codemagic.io/apps)
        
        if command -v jq &> /dev/null; then
            echo "📱 Available apps:"
            echo "$RESPONSE" | jq -r '.data[] | "  \(.id): \(.appName)"'
            
            read -p "Enter the App ID: " APP_ID
        else
            echo "Please enter your Codemagic App ID:"
            read -p "App ID: " APP_ID
        fi
        
        CODEMAGIC_APP_ID="$APP_ID"
    else
        print_status "Using existing App ID: $CODEMAGIC_APP_ID"
    fi
    
    # Validate App ID
    RESPONSE=$(curl -s -w "%{http_code}" -H "Authorization: Bearer $CODEMAGIC_API_TOKEN" https://api.codemagic.io/apps/$CODEMAGIC_APP_ID)
    HTTP_CODE="${RESPONSE: -3}"
    
    if [[ "$HTTP_CODE" == "200" ]]; then
        APP_NAME=$(echo "$RESPONSE" | jq -r '.data.appName' 2>/dev/null || echo "Unknown")
        print_status "✅ App found: $APP_NAME (ID: $CODEMAGIC_APP_ID)"
    else
        print_error "❌ Invalid App ID (HTTP $HTTP_CODE)"
        exit 1
    fi
}

# Create GitHub secrets setup
setup_github_secrets() {
    print_step "Setting up GitHub secrets..."
    
    echo "🔧 To complete the setup, add these secrets to your GitHub repository:"
    echo ""
    echo "1. Go to: https://github.com/$(git config --get remote.origin.url | sed 's/.*github.com\///;s/.git$//')/settings/secrets/actions"
    echo ""
    echo "2. Add the following secrets:"
    echo ""
    echo "   CODEMAGIC_API_TOKEN"
    echo "   Value: $CODEMAGIC_API_TOKEN"
    echo ""
    echo "   CODEMAGIC_APP_ID"
    echo "   Value: $CODEMAGIC_APP_ID"
    echo ""
    print_status "✅ GitHub secrets configuration guide provided"
}

# Test Codemagic workflow
test_workflow() {
    print_step "Testing Codemagic workflow..."
    
    # Create a test build configuration
    BUILD_CONFIG=$(cat << EOF
{
    "appId": "$CODEMAGIC_APP_ID",
    "workflowId": "ios-release",
    "branch": "$(git branch --show-current)",
    "environment": {
        "FLUTTER_VERSION": "3.41.2",
        "BUILD_MODE": "debug",
        "TEST_BUILD": "true"
    }
}
EOF
)
    
    echo "📤 Sending test build request to Codemagic..."
    
    RESPONSE=$(curl -s -w "%{http_code}" -X POST \
        -H "Authorization: Bearer $CODEMAGIC_API_TOKEN" \
        -H "Content-Type: application/json" \
        -d "$BUILD_CONFIG" \
        https://api.codemagic.io/builds)
    
    HTTP_CODE="${RESPONSE: -3}"
    BODY="${RESPONSE%???}"
    
    if [[ "$HTTP_CODE" == "201" || "$HTTP_CODE" == "200" ]]; then
        BUILD_ID=$(echo "$BODY" | jq -r '.buildId // empty')
        if [[ -n "$BUILD_ID" ]]; then
            print_status "✅ Test build triggered successfully"
            echo "🔗 Build ID: $BUILD_ID"
            echo "📊 Monitor at: https://codemagic.io/app/$CODEMAGIC_APP_ID/build/$BUILD_ID"
        else
            print_warning "Build triggered but couldn't extract build ID"
        fi
    else
        print_error "❌ Failed to trigger test build (HTTP $HTTP_CODE)"
        echo "Response: $BODY"
        exit 1
    fi
}

# Generate configuration files
generate_configs() {
    print_step "Generating configuration files..."
    
    # Ensure codemagic.yaml exists
    if [[ ! -f "codemagic.yaml" ]]; then
        print_warning "codemagic.yaml not found. Creating basic configuration..."
        cat > codemagic.yaml << 'EOF'
workflows:
  ios-release:
    name: iOS Release Build
    environment:
      vars:
        FLUTTER_VERSION: 3.41.2
        BUILD_MODE: release
    scripts:
      - name: Setup Flutter
        script: |
          flutter pub get
      - name: Build iOS
        script: |
          flutter build ios --release --no-codesign
    artifacts:
      - build/ios/ipa/*.ipa
EOF
        print_status "✅ Created codemagic.yaml"
    else
        print_status "✅ codemagic.yaml already exists"
    fi
    
    # Create .github/workflows directory if not exists
    mkdir -p .github/workflows
    
    print_status "✅ Configuration files ready"
}

# Main execution
main() {
    echo "🎯 Starting Codemagic setup..."
    echo ""
    
    check_dependencies
    validate_codemagic_token
    get_app_id
    generate_configs
    setup_github_secrets
    
    echo ""
    print_step "Setup completed successfully!"
    echo ""
    echo "📋 Next steps:"
    echo "1. Add the GitHub secrets as shown above"
    echo "2. Commit and push the codemagic.yaml file"
    echo "3. Test the integration by running: .github/scripts/setup_codemagic.sh test"
    echo ""
    echo "🚀 Your Codemagic integration is ready!"
}

# Test function
run_test() {
    echo "🧪 Running Codemagic integration test..."
    test_workflow
}

# Handle arguments
case "${1:-}" in
    "test")
        run_test
        ;;
    "help"|"-h"|"--help")
        echo "Usage: $0 [test|help]"
        echo ""
        echo "Commands:"
        echo "  (no args)  Run full setup"
        echo "  test       Test Codemagic integration"
        echo "  help       Show this help message"
        ;;
    "")
        main
        ;;
    *)
        print_error "Unknown argument: $1"
        echo "Use '$0 help' for usage information"
        exit 1
        ;;
esac
