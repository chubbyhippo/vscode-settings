# install extensions
# Invoke-RestMethod https://raw.githubusercontent.com/chubbyhippo/code-settings/main/install-extensions.sh | Invoke-Expression
# settings.json
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/chubbyhippo/code-settings/main/settings.json" -OutFile "$Home\AppData\Roaming\Code\User\settings.json"
# keybindings.json
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/chubbyhippo/code-settings/main/keybindings.json" -OutFile "$Home\AppData\Roaming\Code\User\keybindings.json"
