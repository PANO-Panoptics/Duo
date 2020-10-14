# Get the modul

Remove-Module Okta
Install-Module oktaapi -AllowClobber
Import-Module oktaapi
Get-Command -Module oktaapi

# define variables
$APIKey = ""
$Org = "Clarionevents"
$OktaDomain = "https://$org.okta.com"

# connect to Okta
$OktaConnection = Connect-Okta $APIKey $OktaDomain

help Get-OktaUser -Examples

# Get Okta Apps
$OktaApps = Get-OktaApp -All
foreach ($OktaApp in $OktaApps[3])
{
    $OktaApp | Get-OktaUser -Verbose
}

    
Get-OktaUser -all
 
    
Get-OktaUser -Filter 'status eq "ACTIVE"'
    
Get-OktaUser -All
    
Get-OktaApp -Identity "0oa21eit1hjFmLGrO1t6" | Get-OktaUser
    

Get-OktaApp -Identity "0oapddc9s8eg4LQgC1t6" | Get-OktaUser
    

    Connect-Okta -token