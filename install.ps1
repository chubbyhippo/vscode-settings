$RAW_SETTINGS_URL = "https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main"

# settings.json
Invoke-WebRequest -Uri "$RAW_SETTINGS_URL/settings.json" -OutFile "$Home\AppData\Roaming\Code\User\settings.json"
# keybindings.json
Invoke-WebRequest -Uri "$RAW_SETTINGS_URL/keybindings.json" -OutFile "$Home\AppData\Roaming\Code\User\keybindings.json"
# install basic extensions
Invoke-RestMethod "$RAW_SETTINGS_URL/install-extensions.sh" | Invoke-Expression