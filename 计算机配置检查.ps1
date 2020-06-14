cls
$空行="                             "
$author="xiaozhu"

Get-CimInstance -ClassName Win32_Desktop
$空行
# -------------------------------------------
"BIOS信息："
Get-CimInstance -ClassName Win32_BIOS
$空行
Get-CimInstance -ClassName Win32_ComputerSystem
$空行
Get-CimInstance -ClassName Win32_OperatingSystem |
  Select-Object -Property BuildNumber,BuildType,OSType,ServicePackMajorVersion,ServicePackMinorVersion
$空行
Get-CimInstance -ClassName Win32_OperatingSystem |
  Select-Object -Property NumberOfLicensedUsers,NumberOfUsers,RegisteredUser
$空行
Get-CimInstance -ClassName Win32_LogicalDisk -Filter "DriveType=3"
$空行
# -------------------------------------------
"时间："
Get-CimInstance -ClassName Win32_LocalTime
# -------------------------------------------
"系统目录位于：$env:windir"
$空行
"默认安装程序目录位于：$env:ProgramFiles"
$空行
"当前日期:$(get-date)"
$空行
"此脚本作者：$author"
"你有三分钟的时间复制结果！"
Start-Sleep -Seconds 180
exit