# Source URL
$url = "https://github.com/Chaseticles/ECW-Update/raw/main/eCW%20Plug-in%204.1.msi"
# Destation file
$dest = "C:\Users\Public\Downloads\eCW Plug-in 4.1.msi"
$start_time = Get-Date
# Download the file
Invoke-WebRequest -Uri $url -OutFile $dest

#Invoke-WebRequest
Invoke-WebRequest -Uri $url -OutFile $output
"Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"

#System.Net.WebClient
(New-Object System.Net.WebClient).DownloadFile($url, $output)
"Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"

#Start-BitsTransfer
Start-BitsTransfer -Source $url -Destination $output -Asynchronous
"Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"

Start-Process C:\Users\Public\Downloads\"eCW Plug-in 4.1.msi" /quiet