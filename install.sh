#!/usr/bin/env sh

# identify destination
destination=""
case $(uname) in
    "Linux")
        destination="$HOME/.config/Code/User/settings.json"
        ;;
    "Darwin")
        destination="$HOME/Library/Application\ Support/Code/User/settings.json"
        ;;
    "MINGW"*)
        destination="$HOME/AppData/Roaming/Code/User/settings.json"
        ;;
    *)
        echo "Unknown Operating System"
        ;;
esac
# install settings.json
echo "$destination"
if [ "$(command -v curl)" ]; then
    curl https://raw.githubusercontent.com/chubbyhippo/code-settings/main/settings.json -o "$destination"
elif [ "$(command -v wget)" ]; then
    wget https://raw.githubusercontent.com/chubbyhippo/code-settings/main/settings.json -P "$destination"
fi