$RawSettingsUrl = "https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main"

# settings.json
Invoke-WebRequest -Uri "$RawSettingsUrl/settings.json" -OutFile "$Home\AppData\Roaming\Code\User\settings.json"
# keybindings.json
Invoke-WebRequest -Uri "$RawSettingsUrl/keybindings.json" -OutFile "$Home\AppData\Roaming\Code\User\keybindings.json"
# install basic extensions
Invoke-RestMethod "$RawSettingsUrl/install-default-extensions.sh" | Invoke-Expression
