<powershell>
function Disable-ieESC {
$AdminKey = "HKLM:\\SOFTWARE\\Microsoft\\Active Setup\\Installed Components\\{A509B1A7-37EF-4b3f-8CFC-4F3A74704073}"
$UserKey = "HKLM:\\SOFTWARE\\Microsoft\\Active Setup\\Installed Components\\{A509B1A8-37EF-4b3f-8CFC-4F3A74704073}"
Set-ItemProperty -Path $AdminKey -Name "IsInstalled" -Value 0
Set-ItemProperty -Path $UserKey -Name "IsInstalled" -Value 0
Stop-Process -Name Explorer -force
}
Disable-ieESC
Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled false
tzutil /s "E. South America Standard Time"
Rename-Computer -NewName "${instance_name}" -Force -Restart
</powershell>