$download_url = 'https://opscode-omnibus-packages.s3.amazonaws.com/windows/2008r2/i386/chef-client-12.4.2-1-x86.msi'
(New-Object System.Net.WebClient).DownloadFile($download_url, 'C:\\Windows\\Temp\\chef.msi')
Start-Process 'msiexec' -ArgumentList '/qb /i C:\\Windows\\Temp\\chef.msi' -NoNewWindow -Wait