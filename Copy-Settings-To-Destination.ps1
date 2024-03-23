$keybindingsFile = ".\keybindings.json"
$keybindingsDestination = "$HOME\.config\Code\User\keybindings.json"

if (-not (Test-Path $keybindingsDestination)) {
    New-Item -Path $keybindingsDestination -ItemType Directory
}

Copy-Item -Path $keybindingsFile -Destination $keybindingsDestination

$settingsFile = ".\settings.json"
$settingsDestination = "$HOME\.config\Code\User\settings.json"

if (-not (Test-Path $settingsDestination)) {
    New-Item -Path $settingsDestination -ItemType Directory
}

Copy-Item -Path $settingsFile -Destination $settingsDestination
