# settings.json
Copy-Item -Path "settings.json" -Destination "$Home\AppData\Roaming\Code\User\settings.json" -Force
# keybindings.json
Copy-Item -Path "keybindings.json" -Destination "$Home\AppData\Roaming\Code\User\keybindings.json" -Force
# extensions
bash .\install-extensions.sh