$settingsJsonDestination = "$Home\AppData\Roaming\Code\User\settings.json"
$keybindingsJsonDestination = "$Home\AppData\Roaming\Code\User\keybindings.json"

# Remove settings.json
if (Test-Path $settingsJsonDestination) {
  Remove-Item -Path $settingsJsonDestination -Force
  Write-Host "Removed $settingsJsonDestination"
}

# Remove keybindings.json
if (Test-Path $keybindingsJsonDestination) {
  Remove-Item -Path $keybindingsJsonDestination -Force
  Write-Host "Removed $keybindingsJsonDestination"
}
