# Script to create .p12 certificate on Windows without OpenSSL
# Requires: certificate.cer (downloaded from Apple) and private.key (existing)

$cerFile = "certificate.cer"
$keyFile = "private.key"
$p12File = "certificate.p12"
$p12Password = Read-Host -Prompt "Enter password for .p12 file" -AsSecureString

# Check if files exist
if (-not (Test-Path $cerFile)) {
    Write-Error "certificate.cer not found! Please download it from Apple Developer."
    exit 1
}
if (-not (Test-Path $keyFile)) {
    Write-Error "private.key not found!"
    exit 1
}

# Read the certificate
$certBytes = [System.IO.File]::ReadAllBytes($cerFile)
$cert = New-Object System.Security.Cryptography.X509Certificates.X509Certificate2
$cert.Import($cerBytes)

# Read the private key
$keyContent = Get-Content $keyFile -Raw

# Create a .pfx/.p12 with empty password (GitHub Actions will use it)
$certCollection = New-Object System.Security.Cryptography.X509Certificates.X509Certificate2Collection
$certCollection.Add($cert)

$p12Bytes = $certCollection.Export(
    [System.Security.Cryptography.X509Certificates.X509ContentType]::Pfx,
    [System.Runtime.InteropServices.Marshal]::PtrToStringAuto(
        [System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($p12Password)
    )
)

[System.IO.File]::WriteAllBytes($p12File, $p12Bytes)

Write-Host "✅ Created: $p12File" -ForegroundColor Green
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Yellow
Write-Host "1. Upload $p12File to GitHub Secrets as IOS_CERTIFICATE_BASE64"
Write-Host "2. Convert to Base64 using:" -NoNewline
Write-Host "[Convert]::ToBase64String([IO.File]::ReadAllBytes('$p12File')) | Set-Clipboard" -ForegroundColor Cyan
