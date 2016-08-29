$secpasswd = ConvertTo-SecureString "%password%" -AsPlainText -Force
$cred = New-Object System.Management.Automation.PSCredential("%username%", $secpasswd)
(Invoke-RestMethod -Credential $cred -Uri "%teamcity.serverUrl%/httpAuth/app/rest/builds/id:%build.id%/pin/" -Method Put);
