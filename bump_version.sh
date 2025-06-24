#!/bin/bash
# ./bump_version.sh 1.3.0 4

VERSION=$1
BUILD=$2

if [[ -z "$VERSION" || -z "$BUILD" ]]; then
  echo "❌ Usage: ./bump_version.sh <version> <build_number>"
  exit 1
fi

echo "🔧 Updating version to $VERSION+$BUILD..."

# Update pubspec.yaml
sed -i '' -E "s/^version: .*/version: $VERSION+$BUILD/" pubspec.yaml

# Update iOS project.pbxproj
PBXPROJ_FILE="ios/Runner.xcodeproj/project.pbxproj"

if grep -q "MARKETING_VERSION" "$PBXPROJ_FILE"; then
  sed -i '' -E "s/MARKETING_VERSION = .*/MARKETING_VERSION = $VERSION;/" $PBXPROJ_FILE
else
  echo "MARKETING_VERSION = $VERSION;" >> $PBXPROJ_FILE
fi

if grep -q "CURRENT_PROJECT_VERSION" "$PBXPROJ_FILE"; then
  sed -i '' -E "s/CURRENT_PROJECT_VERSION = .*/CURRENT_PROJECT_VERSION = $BUILD;/" $PBXPROJ_FILE
else
  echo "CURRENT_PROJECT_VERSION = $BUILD;" >> $PBXPROJ_FILE
fi

echo "✅ Version bumped to $VERSION+$BUILD"
