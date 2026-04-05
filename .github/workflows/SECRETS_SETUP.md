# Google Play Deployment Secrets

This document lists all the GitHub Secrets required for the Google Play deployment workflow.

## Required Secrets

### 1. SHOREBIRD_TOKEN
- **Description**: Shorebird API token for authentication
- **How to get**: Run `shorebird login` locally or get from https://console.shorebird.dev
- **Format**: `sb_api_...`

### 2. KEYSTORE_BASE64
- **Description**: Base64 encoded keystore file (muein_orders.jks)
- **How to create**:
  ```bash
  base64 -i android/app/muein_orders.jks -o keystore_base64.txt
  ```
- **Then**: Copy the content of `keystore_base64.txt` as the secret value

### 3. KEYSTORE_PASSWORD
- **Description**: Password for the keystore file
- **Source**: The password you used when creating the keystore

### 4. KEY_PASSWORD
- **Description**: Password for the key alias
- **Source**: Usually the same as KEYSTORE_PASSWORD if you didn't specify a different one

### 5. KEY_ALIAS
- **Description**: Alias name for the key in the keystore
- **Source**: The alias you specified when creating the keystore (e.g., `upload`)

### 6. GOOGLE_PLAY_SERVICE_ACCOUNT_JSON
- **Description**: Google Play Service Account JSON key
- **How to get**:
  1. Go to Google Play Console → Setup → API access
  2. Create a service account
  3. Download the JSON key
  4. Copy the entire JSON content as the secret value

## Setting Up Secrets in GitHub

1. Go to your repository on GitHub
2. Navigate to **Settings** → **Secrets and variables** → **Actions**
3. Click **New repository secret**
4. Add each secret with its exact name as listed above

## Testing the Deployment

1. Go to **Actions** tab in your repository
2. Select **Deploy to Google Play**
3. Click **Run workflow**
4. Enter:
   - Version: e.g., `1.0.1`
   - Build number: e.g., `7`
   - Track: `internal` (for testing)

## Notes

- Always use `internal` track first to test before promoting to production
- Build number must be unique and higher than previous releases
- Version format should be semantic: `MAJOR.MINOR.PATCH` (e.g., `1.0.1`)
