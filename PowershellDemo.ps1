$Host
#get-service -name "Bits"
#Get-Command -Name "get-service"
#Get-Command -Noun "service"
#Get-Command -Noun "*notebook*"

$x = 10
$y = 20
If($x -ge $y){
    Write-Output "x is big"
}
else{
    Write-Output "y is big"
}
$flag=$true
if($flag){
    Write-Output "correct"
}
$count = 0
do {
    Write-Output "$count"
    $count++
}
while(
    $count -le 5
)

#customobject:

$employee = @(
    [PSCustomObject]@{name = "harsh"; empno = 34; mob = 7899303030}
    [PSCustomObject]@{name = "Jon"; empno = 30; mob = 7892203030}
    [PSCustomObject]@{name = "Bob"; empno = 31; mob = 780323030}
)
#forech for iteration:
foreach($i in $employee){
    Write-Output "$($i.name), $($i.empno), $($i.mob)"
}

#hashtable it will have unique key only
$settings = @{
    "appname" = "app1"
    "version" = "1.0.0"
    "maxusers" = 100
}

$settings["appname"]
$settings["appname","version","maxusers"]
$settings["version"] = "2.0.0"
$settings["version"]

foreach($i in $settings){
    $i["appname"]
    $i
}
$settings.ContainsKey("version")

#pipeline : output of one command as input of another command
#command1 | command2 | command3

"hello" | ForEach-Object {$_.ToUpper()}
Get-Process | Where-Object{$_.Name -eq "Notepad"} | Select-Object id,Name

