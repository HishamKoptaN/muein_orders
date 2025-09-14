# Move Sign In Files
# Move sign_in_view.dart to the new location
Move-Item -Path "g:\flutter_projects\mubin_orders\lib\features\auth\sign_in_view.dart" -Destination "g:\flutter_projects\mubin_orders\lib\features\auth\sign_in\presentation\pages\sign_in_page.dart" -Force

# Move Sign Up Files
# Move sign_up_view.dart to the new location
Move-Item -Path "g:\flutter_projects\mubin_orders\lib\features\auth\sign_up\sign_up_view.dart" -Destination "g:\flutter_projects\mubin_orders\lib\features\auth\sign_up\presentation\pages\sign_up_page.dart" -Force

# Move auth_choice_view.dart to shared widgets
Move-Item -Path "g:\flutter_projects\mubin_orders\lib\features\auth\auth_choice_view.dart" -Destination "g:\flutter_projects\mubin_orders\lib\features\auth\shared\widgets\auth_choice_view.dart" -Force

# Move form_inputs.dart to shared utils
Move-Item -Path "g:\flutter_projects\mubin_orders\lib\features\auth\models\form_inputs.dart" -Destination "g:\flutter_projects\mubin_orders\lib\features\auth\shared\utils\form_inputs.dart" -Force

# Move auth bloc files
Move-Item -Path "g:\flutter_projects\mubin_orders\lib\features\auth\presentation\bloc\auth_bloc\*" -Destination "g:\flutter_projects\mubin_orders\lib\features\auth\sign_in\presentation\bloc\" -Force

Write-Host "Files moved successfully!"
