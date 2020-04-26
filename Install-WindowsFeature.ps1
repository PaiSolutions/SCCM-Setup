$serverVersion = Read-Host -Prompt 'Server 2012r2 or 2016'

If ($serverVersion -eq '2012r2') {

Install-WindowsFeature Web-Static-Content,Web-Default-Doc,Web-Dir-Browsing,Web-Http-Errors,Web-Http-Redirect,Web-Net-Ext,Web-ISAPI-Ext,Web-Http-Logging,Web-Log-Libraries,Web-Request-Monitor,Web-Http-Tracing,Web-Windows-Auth,Web-Filtering,Web-Stat-Compression,Web-Mgmt-Tools,Web-Mgmt-Compat,Web-Metabase,Web-WMI,BITS,RDC

} ElseIf ($serverVersion - '2016') {

Get-Module ServerManager
Install-WindowsFeature Web-Windows-Auth
Install-WindowsFeature Web-ISAPI-Ext
Install-WindowsFeature Web-Metabase
Install-WindowsFeature Web-WMI
Install-WindowsFeature BITS
Install-WindowsFeature RDC
Install-WindowsFeature NET-Framework-Features
Install-WindowsFeature Web-Asp-Net
Install-WindowsFeature Web-Asp-Net45
Install-WindowsFeature NET-HTTP-Activation
Install-WindowsFeature NET-WCF-HTTP-Activation45

}
