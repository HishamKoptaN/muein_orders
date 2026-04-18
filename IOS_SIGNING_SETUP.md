# iOS Signing Setup Guide

## Overview
This project already works with CodeMagic! This guide helps you set up the same signing for GitHub Actions.

## Prerequisites
- You have successfully built iOS releases with CodeMagic before
- You have access to Apple Developer Portal
- You have the Distribution Certificate (.p12)
- You have the Provisioning Profile (.mobileprovision)

## Quick Setup (Automated)

### Step 1: Download Provisioning Profile from Apple Developer Portal
1. Visit: https://developer.apple.com/account/resources/profiles/list
2. Find your App Store Distribution profile (e.g., "Muein Orders ios_app_store")
3. Click Download
4. Save to: `~/Downloads/Muein_Orders_ios_app_store.mobileprovision`

### Step 2: Run the Setup Script

**On Windows:**
```powershell
# In PowerShell (as Administrator)
cd G:\flutter_projects\muein_orders
.\scripts\extract_and_encode_profile.ps1

# Or provide path directly:
.\scripts\extract_and_encode_profile.ps1 -ProfilePath "C:\Users\You\Downloads\Muein_Orders_ios_app_store.mobileprovision"
```

**On Mac/Linux:**
```bash
cd ~/flutter_projects/muein_orders
./scripts/encode_provisioning_profile.sh ~/Downloads/Muein_Orders_ios_app_store.mobileprovision
```

### Step 3: Add GitHub Secret
1. Go to: https://github.com/HishamKoptaN/muein_orders/settings/secrets/actions
2. Click "New repository secret"
3. Name: `IOS_PROVISIONING_PROFILE_BASE64`
4. Value: (paste the base64 output from the script)
5. Click "Add secret"

### Step 4: Trigger Shorebird Release
```bash
# Push to prod branch or manually trigger:
git push origin prod
```

## Manual Setup (Alternative)

### Encode Profile Manually

**Windows:**
```powershell
[Convert]::ToBase64String([System.IO.File]::ReadAllBytes("C:\Users\You\Downloads\profile.mobileprovision")) | Set-Clipboard
```

**Mac:**
```bash
base64 -i ~/Downloads/profile.mobileprovision | pbcopy
```

**Linux:**
```bash
base64 -w 0 ~/Downloads/profile.mobileprovision | xclip -selection clipboard
```

### Add to GitHub Secrets
1. Go to Repository Settings → Secrets and variables → Actions
2. New repository secret
3. Name: `IOS_PROVISIONING_PROFILE_BASE64`
4. Value: (paste from clipboard)

## Required GitHub Secrets

| Secret Name | Description | How to Get |
|------------|-------------|------------|
| `IOS_PROVISIONING_PROFILE_BASE64` | Base64 encoded .mobileprovision | Download from Apple Developer Portal |
| `APP_STORE_CONNECT_API_KEY_BASE64` | Base64 encoded .p8 API key | Apple Developer → Keys → App Store Connect API |
| `APP_STORE_CONNECT_KEY_ID` | API Key ID | Apple Developer Portal |
| `APP_STORE_CONNECT_ISSUER_ID` | Issuer ID | Apple Developer Portal |
| `SHOREBIRD_TOKEN` | Shorebird auth token | https://console.shorebird.dev |

## Verification

### Check if setup is complete:
```bash
# Run this in your project directory
python3 scripts/verify_setup.py
```

### Test release locally:
```bash
flutter build ios --release --no-codesign
```

## Troubleshooting

### Error: "No profile for team matching found"
- **Cause**: Provisioning profile not installed or team ID mismatch
- **Fix**: Verify `IOS_PROVISIONING_PROFILE_BASE64` is set correctly

### Error: "Certificate not found"
- **Cause**: Distribution certificate not in keychain
- **Fix**: Add certificate to GitHub Secrets (optional if using manual signing)

### Error: "Bundle identifier mismatch"
- **Cause**: Profile's Bundle ID doesn't match app's Bundle ID
- **Fix**: Verify `com.muein.orders` in Xcode matches profile

## CodeMagic Migration Checklist

If you have a working CodeMagic setup, ensure:
- [ ] Same Provisioning Profile is used
- [ ] Same Certificate is available
- [ ] Bundle Identifier matches
- [ ] Team ID is correct

## Scripts Reference

| Script | Purpose |
|--------|---------|
| `scripts/extract_and_encode_profile.ps1` | Windows: Find and encode provisioning profile |
| `scripts/encode_provisioning_profile.sh` | Mac/Linux: Encode provisioning profile |
| `scripts/setup_ios_signing.ps1` | Windows: Full setup wizard |
| `scripts/verify_setup.py` | Verify all secrets are configured |

## Support

For issues:
1. Check GitHub Actions logs
2. Verify all secrets are set
3. Test with `flutter build ios --release` locally
4. Compare with working CodeMagic configuration
