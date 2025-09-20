# Integration Tests

This directory contains integration tests for the Mubin Orders application.

## Running Tests

### Run All Integration Tests

```bash
# Run all integration tests
flutter test integration_test

# Run with coverage
flutter test integration_test --coverage --coverage-path=coverage/integration_coverage/lcov.info

# Generate and view coverage report
flutter pub run test_cov_console
```

### Run Specific Test File

```bash
# Run a specific test file
flutter test integration_test/auth/sign_up_test.dart
```

### Run with Debugging

```bash
# Run with debugging
flutter test --start-paused integration_test/auth/sign_up_test.dart
```

## Test Structure

- `auth/` - Authentication related tests
  - `sign_up_test.dart` - Tests for user registration

## Writing New Tests

1. Create a new test file in the appropriate subdirectory
2. Follow the pattern of existing tests
3. Use `mocktail` for mocking dependencies
4. Write clear, descriptive test names
5. Include proper setup and teardown
6. Test both success and error cases

## Best Practices

- Keep tests independent and isolated
- Use meaningful test names
- Test edge cases and error conditions
- Mock external dependencies
- Keep tests fast and reliable
- Update tests when making changes to the code
