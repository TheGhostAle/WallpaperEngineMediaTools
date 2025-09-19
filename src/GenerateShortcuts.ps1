$ProjectDir = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Definition)
$BashDir = Join-Path $ProjectDir "src\bash"
$ShortcutsDir = Join-Path $ProjectDir "shortcuts"

if (-Not (Test-Path $ShortcutsDir)) {
    New-Item -ItemType Directory -Path $ShortcutsDir | Out-Null
}

if (-Not (Test-Path $BashDir)) {
    Write-Host "The folder $BashDir does not exist."
    exit
}

$WshShell = New-Object -ComObject WScript.Shell

Get-ChildItem -Path $BashDir -File -Filter *.bat | ForEach-Object {
    $FilePath = $_.FullName
    $BaseName = [System.IO.Path]::GetFileNameWithoutExtension($_.Name)
    $ShortcutPath = Join-Path $ShortcutsDir ($BaseName + ".lnk")

    $Shortcut = $WshShell.CreateShortcut($ShortcutPath)
    $Shortcut.TargetPath = $FilePath
    $Shortcut.WorkingDirectory = $_.DirectoryName
    $Shortcut.IconLocation = $FilePath
    $Shortcut.WindowStyle = 7
    $Shortcut.Save()

    Write-Host "Created shortcut: $ShortcutPath"
}

Write-Host
Write-Host "All shortcuts have been generated in the 'shortcuts\' folder."