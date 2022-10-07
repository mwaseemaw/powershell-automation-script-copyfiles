param(
    $mylocation,
    $myDestination,
    $myFiles)
    $files = Get-ChildItem  -Path $myLocation -Include $myFiles -Recurse
foreach($file in $files){
    Copy-Item $file.FullName -Destination $myDestination
}
