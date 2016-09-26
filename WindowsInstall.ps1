Install-WindowsFeature -Name Web-Server -IncludeAllSubFeature -Verbose
Install-WindowsFeature -Name telnet-client -Verbose

# Install Chocolate
(iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1')))>$null 2>&1
choco install 7zip -y