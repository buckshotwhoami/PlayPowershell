if ((Get-WMIObject win32_logicaldisk -filter "DeviceID = 'C:'").filesystem -eq "ntfs") 
{write-warning "This is not an NTFS filesystem";$a=Read-host "Do you want to continue? (Y/N)";if ($a -eq "N") {exit}}

