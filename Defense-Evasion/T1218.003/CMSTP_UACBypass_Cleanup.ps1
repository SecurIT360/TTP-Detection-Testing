# Cleanup after CMSTP UAC Bypass script
# This deletes:
#     - the CMSTP desktop folder
#     - the cmstp.inf file
#     - the CorpVPN network connection


$InfFileLocation = "C:\Users\$env:USERNAME\Desktop\CMSTP\CMSTP.inf"
$InfDirectory = split-path $InfFileLocation -Parent

Remove-Item -Recurse $InfDirectory -Force

