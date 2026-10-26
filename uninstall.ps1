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

# Uninstall the default extensions installed by install-default-extensions.sh
$extensions = @(
  "vscodevim.vim",
  "GitHub.github-vscode-theme",
  "PKief.material-icon-theme",
  "SonarSource.sonarlint-vscode",
  "asispts.neo-git-graph",
  "eamodio.gitlens",
  "alefragnani.numbered-bookmarks",
  "ms-azuretools.vscode-docker",
  "ms-vscode-remote.remote-wsl",
  "esbenp.prettier-vscode",
  "redhat.vscode-yaml",
  "redhat.vscode-xml",
  "mishkinf.goto-next-previous-member",
  "humao.rest-client",
  "asciidoctor.asciidoctor-vscode",
  "hverlin.mise-vscode"
)

foreach ($extension in $extensions) {
  code --uninstall-extension $extension
}
