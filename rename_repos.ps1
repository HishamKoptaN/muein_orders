# Rename all repositories directories to repo
$baseDir = "g:\flutter_projects\mubin_orders\lib"

# Get all repositories directories
$repoDirs = Get-ChildItem -Path $baseDir -Directory -Recurse -Filter "repositories" -Force

foreach ($dir in $repoDirs) {
    $newPath = Join-Path $dir.Parent.FullName "repo"
    
    # Rename the directory
    if (Test-Path $newPath) {
        Write-Host "Directory already exists: $newPath"
    } else {
        Rename-Item -Path $dir.FullName -NewName "repo"
        Write-Host "Renamed: $($dir.FullName) -> $newPath"
    }
}

# Update import statements in Dart files
$dartFiles = Get-ChildItem -Path $baseDir -Filter "*.dart" -Recurse -File

foreach ($file in $dartFiles) {
    $content = Get-Content -Path $file.FullName -Raw
    $newContent = $content -replace "repositories/", "repo/"
    
    if ($content -ne $newContent) {
        Set-Content -Path $file.FullName -Value $newContent -NoNewline
        Write-Host "Updated imports in: $($file.FullName)"
    }
}

Write-Host "Repository directory renaming and import updates completed."
