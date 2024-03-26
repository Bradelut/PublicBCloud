$passportFolder = "C:\Windows\ServiceProfiles\LocalService\AppData\Local\Microsoft\Ngc"

if(Test-Path -Path $passportFolder)
{
Takeown /f $passportFolder /r /d "Y"
ICACLS $passportFolder /reset /T /C /L /Q

Remove-Item –path $passportFolder –recurse -force
}
