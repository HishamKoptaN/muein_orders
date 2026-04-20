#!/bin/bash

# SSH Setup Script for Fastlane Match
# This script configures SSH access for private certificate repositories

set -e

echo "🔧 Setting up SSH for Fastlane Match..."

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

print_status() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Check if SSH key is provided
if [[ -z "$SSH_PRIVATE_KEY" ]]; then
    print_error "SSH_PRIVATE_KEY is not set"
    print_warning "Please add SSH_PRIVATE_KEY to your GitHub secrets"
    exit 1
fi

# Setup SSH directory
SSH_DIR="$HOME/.ssh"
mkdir -p "$SSH_DIR"
chmod 700 "$SSH_DIR"

# Write SSH private key
echo "$SSH_PRIVATE_KEY" > "$SSH_DIR/id_rsa"
chmod 600 "$SSH_DIR/id_rsa"

# Add GitHub to known hosts
ssh-keyscan -t rsa github.com >> "$SSH_DIR/known_hosts"
chmod 644 "$SSH_DIR/known_hosts"

# Configure git to use SSH
git config --global user.name "GitHub Actions"
git config --global user.email "actions@github.com"

# Test SSH connection
print_status "Testing SSH connection to GitHub..."
ssh -T git@github.com || true

# Test repository access
REPO_URL="git@github.com:HishamKoptaN/muein_orders_certificates.git"
print_status "Testing repository access: $REPO_URL"

# Try to clone the repository (dry run)
if git ls-remote "$REPO_URL" > /dev/null 2>&1; then
    print_status "✅ SSH access to certificates repository is working"
else
    print_error "❌ Cannot access certificates repository via SSH"
    print_warning "Please ensure:"
    print_warning "1. SSH key has access to the repository"
    print_warning "2. Repository URL is correct"
    print_warning "3. SSH key is added to GitHub deploy keys"
    exit 1
fi

print_status "✅ SSH setup completed successfully"
