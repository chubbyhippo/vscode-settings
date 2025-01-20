# settings.json
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/settings.json" -OutFile "$Home\AppData\Roaming\Code\User\settings.json"
# keybindings.json
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/keybindings.json" -OutFile "$Home\AppData\Roaming\Code\User\keybindings.json"
# install basic extensions
Invoke-RestMethod https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/install-extensions.sh | Invoke-Expression
