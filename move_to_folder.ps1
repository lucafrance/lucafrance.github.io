# Move to current directory https://stackoverflow.com/a/4724421
$scriptpath = $MyInvocation.MyCommand.Path
$dir = Split-Path $scriptpath
cd $dir