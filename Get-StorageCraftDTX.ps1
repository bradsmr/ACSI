$url = 'https://downloads.storagecraft.com/SP_Files/dtx-2.3.0-0_windows-x86_64_2021-08-05.zip'
$DownloadZipFile = "C:\dtx\zip\" + $(Split-Path -Path $Url -Leaf)
$ExtractPath = "C:\dtx\"
New-Item -ItemType Directory -Force -Path C:\dtx\zip
Invoke-WebRequest -Uri $Url -OutFile $DownloadZipFile
$ExtractShell = New-Object -ComObject Shell.Application 
$ExtractFiles = $ExtractShell.Namespace($DownloadZipFile).Items() 
$ExtractShell.NameSpace($ExtractPath).CopyHere($ExtractFiles) 
Start-Process $ExtractPath
Start-Process -NoNewWindow -FilePath "C:\dtx\dtx.exe"