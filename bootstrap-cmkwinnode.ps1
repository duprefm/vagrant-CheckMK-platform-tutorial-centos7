# Name: WindowsBootstrap.ps1
# Description: Boxstarter bootstrap script for basic Windows Server configuration
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server" -Name "fdenyTSXonnections" -Value 0
Enable-NetFirewallRule -DisplayGroup "Remote Desktop"