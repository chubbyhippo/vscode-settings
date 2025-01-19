# settings.json
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/settings.json" -OutFile "$Home\AppData\Roaming\Code\User\settings.json"
# keybindings.json
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/chubbyhippo/code-settings/main/keybindings.json" -OutFile "$Home\AppData\Roaming\Code\User\keybindings.json"
