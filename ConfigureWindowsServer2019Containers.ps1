# Reference: https://docs.microsoft.com/it-it/virtualization/windowscontainers/quick-start/set-up-environment?tabs=Windows-Server
# Open an elevated PowerShell session and install the Docker-Microsoft PackageManagement Provider from the PowerShell Gallery.
# If you're prompted to install the NuGet provider, type Y to install it as well.
Install-Module -Name DockerMsftProvider -Repository PSGallery -Force

# Use the PackageManagement PowerShell module to install the latest version of Docker.
# When PowerShell asks you whether to trust the package source 'DockerDefault', type A to continue the installation.
Install-Package -Name docker -ProviderName DockerMsftProvider

# After the installation completes, restart the computer.
Restart-Computer -Force


# If you want to update Docker later:

# Check the installed version with Get-Package -Name Docker -ProviderName DockerMsftProvider
# Find the current version with Find-Package -Name Docker -ProviderName DockerMsftProvider
# When you're ready, upgrade with Install-Package -Name Docker -ProviderName DockerMsftProvider -Update -Force, followed by Start-Service Docker