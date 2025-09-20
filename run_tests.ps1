# Run integration tests
Write-Host "Running integration tests..." -ForegroundColor Green
flutter test integration_test --no-pub --coverage --coverage-path=coverage/integration_coverage/lcov.info

# Generate coverage report
Write-Host "Generating coverage report..." -ForegroundColor Green
flutter pub run test_cov_console

# Open coverage report in browser
Write-Host "Opening coverage report in browser..." -ForegroundColor Green
Start-Process "coverage"
