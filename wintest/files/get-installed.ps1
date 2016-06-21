Param($csvpath)
Get-ChildItem HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall |
 foreach {Get-ItemProperty $_.PSPath} |
 select DisplayName,DisplayVersion,InstallDate,Publisher |
 export-csv $csvpath -notype
