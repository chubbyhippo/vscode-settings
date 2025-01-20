#!/usr/bin/env sh

# identify settings_json_destination
settings_json_destination=""
keybindings_json_destination=""
case $(uname) in
    "Linux")
        settings_json_destination="$HOME/.config/Code/User/settings.json"
        keybindings_json_destination="$HOME/.config/Code/User/keybindings.json"
        ;;
    "Darwin")
        settings_json_destination="$HOME/Library/Application Support/Code/User/settings.json"
        keybindings_json_destination="$HOME/Library/Application Support/Code/User/keybindings.json"
        ;;
    "MINGW"*)
        settings_json_destination="$HOME/AppData/Roaming/Code/User/settings.json"
        keybindings_json_destination="$HOME/AppData/Roaming/Code/User/keybindings.json"
        ;;
    *)
        echo "Unknown Operating System"
        ;;
esac
# install settings.json
echo "$settings_json_destination"
if [ "$(command -v curl)" ]; then
    curl https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/settings.json -o "$settings_json_destination"
    curl https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/keybindings.json -o "$keybindings_json_destination"
elif [ "$(command -v wget)" ]; then
    wget https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/settings.json -P "$settings_json_destination"
    wget https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/keybindings.json -P "$keybindings_json_destination"
fi

# install basic extensions
curl -s https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/install-extensions.sh | /usr/bin/env sh
