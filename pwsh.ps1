Get-BitLockerVolume | Where-Object { $_.VolumeStatus -eq ‘FullyEncrypted’ }


Get-WindowsCapability -Online | Where-Object { $_.State -eq ‘Installed’ }

# to visually identify Digitally signed files with an Expired status on the Digital Certificate
Get-Childitem C:\Folder\*.* -Recurse | Get-AuthenticodeSignature | Where-Object { $_.Status -ne ‘Valid’ }


# You can use SQL Server Assessments – the latest addition to the SQLServer PowerShell module. Just Run a best practices assessment on your SQL Server as seen below
Get-SqlInstance  “DemoSQLServer” | Invoke-SqlAssessment
