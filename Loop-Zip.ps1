function Loop-Zip($Source, $Destination, $CmdPath = "$env:ProgramFiles\winrar\WinRAR.exe")
{
#$CmdPath = "$env:ProgramFiles\7-Zip\7z.exe"
$AllFiles = Get-ChildItem $Source -Recurse -Exclude *.zip | where{ Test-Path $_.fullname -pathtype leaf}
foreach($File in $AllFiles) 
{
$ListFile = $File.FullName
$7ZipFile =  $Destination
$7ZipFile +=  $File.BaseName + ".zip"
if ((Test-Path $7ZipFile) -eq "true") {"Its already there mate"}
else { & $CmdPath a "$7ZipFile" "$ListFile" }
}# End Directory Loop
}# End Loop-Zip