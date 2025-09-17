# Mubeen Orders

A Flutter application for managing orders.

## Project Rules

### Clean Command

**Important:** The `flutter clean` command is disabled for this project to prevent accidental removal of important files.

#### Instead, use:

```bash
dart run clean
```

This will safely clean build files without removing dependencies.

## Getting Started

### Prerequisites

- Flutter SDK
- Dart SDK
- Android Studio / Xcode (for mobile development)

### Installation

1. Clone the repository
2. Install dependencies:
   ```bash
   flutter pub get
   ```
3. Run the app:
   ```bash
   flutter run
   ```

## Development

### Code Generation

After making changes to models or repositories, run:

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

### Project Structure

```
lib/
  features/         # Feature-based modules
  core/             # Core functionality
  shared/           # Shared widgets and utilities
```

## Contributing

1. Create a new branch for your feature
2. Make your changes
3. Run tests
4. Submit a pull request
