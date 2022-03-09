# Name: WindowsBootstrap.ps1
# Description: Boxstarter bootstrap script for basic Windows Server configuration
#Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server" -Name "fdenyTSXonnections" -Value 0
#Enable-NetFirewallRule -DisplayGroup "Remote Desktop"
Import-Module NetSecurity

Set-NetFirewallRule -DisplayName "File and Printer Sharing (Echo Request - ICMPv4-In)" -Enabled True
Set-NetFirewallRule -DisplayName "File and Printer Sharing (Echo Request - ICMPv4-Out)" -Enabled True