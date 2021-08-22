$sp = 'C:\Users\Administrator\AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets'
$fileList = (ls $sp)
$fileList = ($fileList | ? {$_.length -gt 100000})
$fileList | % {cp $_.FullName e:\win10-lockpage\new\$_.jpg}
exp e:\win10-lockpage\new\
