# Makefile for Flutter iOS Build Automation
# ===========================================

.PHONY: help install pods clean build-ipa release-ipa beta production

# Default target
help:
	@echo "Available commands:"
	@echo "  make install      - Install Flutter dependencies"
	@echo "  make pods         - Install/update CocoaPods"
	@echo "  make clean        - Clean build artifacts"
	@echo "  make build-ipa    - Build IPA for iOS (debug)"
	@echo "  make release-ipa  - Build IPA for iOS (release, no-codesign)"
	@echo "  make beta         - Upload to TestFlight via Fastlane"
	@echo "  make production   - Submit to App Store via Fastlane"

# Install Flutter dependencies
install:
	flutter pub get

# Generate code (Freezed, Retrofit, etc.)
codegen:
	flutter pub run build_runner build --delete-conflicting-outputs

# Install CocoaPods
pods:
	cd ios && pod install --repo-update

# Clean build artifacts
clean:
	flutter clean
	cd ios && rm -rf build/ Pods/ Podfile.lock

# Build IPA for release (used by Fastlane)
# Note: Fastlane handles signing separately
release-ipa: install
	flutter build ios --release --no-codesign

# Build IPA for debugging
build-ipa: install
	flutter build ios --debug --no-codesign

# Fastlane lanes
beta:
	cd ios && bundle exec fastlane beta

production:
	cd ios && bundle exec fastlane production

build-only:
	cd ios && bundle exec fastlane build_only

# Full clean build workflow
clean-release: clean install pods release-ipa
