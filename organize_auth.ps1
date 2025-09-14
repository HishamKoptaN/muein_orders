# Create necessary directories
$basePath = "g:\flutter_projects\mubin_orders\lib\features\auth"

# Sign In Feature
New-Item -ItemType Directory -Path "$basePath\sign_in\data\{datasources,repositories,models}" -Force
New-Item -ItemType Directory -Path "$basePath\sign_in\domain\{entities,repositories,usecases}" -Force
New-Item -ItemType Directory -Path "$basePath\sign_in\presentation\{bloc,pages,widgets}" -Force

# Sign Up Feature
New-Item -ItemType Directory -Path "$basePath\sign_up\data\{datasources,repositories,models}" -Force
New-Item -ItemType Directory -Path "$basePath\sign_up\domain\{entities,repositories,usecases}" -Force
New-Item -ItemType Directory -Path "$basePath\sign_up\presentation\{bloc,pages,widgets}" -Force

# Forgot Password Feature
New-Item -ItemType Directory -Path "$basePath\forgot_password\data\{datasources,repositories,models}" -Force
New-Item -ItemType Directory -Path "$basePath\forgot_password\domain\{entities,repositories,usecases}" -Force
New-Item -ItemType Directory -Path "$basePath\forgot_password\presentation\{bloc,pages,widgets}" -Force

# Shared Resources
New-Item -ItemType Directory -Path "$basePath\shared\{widgets,utils}" -Force

Write-Host "Directory structure created successfully!"
