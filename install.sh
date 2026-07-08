#!/bin/sh

# Initialize destination variable for settings.json
settings_json_destination=""

# Detect the operating system and set file paths accordingly
case $(uname) in
"Linux")
  # For Linux systems
  settings_json_destination="$HOME/.config/Code/User/settings.json"
  ;;
"Darwin")
  # For macOS systems
  settings_json_destination="$HOME/Library/Application Support/Code/User/settings.json"
  ;;
"MINGW"*)
  # For Windows systems using MinGW
  case $(command -v code 2>/dev/null) in
  *"/scoop/apps/vscode/"*)
    # If VSCode was installed via Scoop
    echo "vscode was installed via Scoop."
    settings_json_destination="$HOME/scoop/apps/vscode/current/data/user-data/User/settings.json"
    ;;
  *)
    # Default VSCode installation path in Windows
    settings_json_destination="$HOME/AppData/Roaming/Code/User/settings.json"
    ;;
  esac
  ;;
*)
  # If the operating system is unknown
  echo "Unknown Operating System"
  ;;
esac

# Print the destination paths for verification
echo "$settings_json_destination"

RAW_SETTINGS_URL="https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main"

# Create the destination directory and download settings.json
mkdir -p "$(dirname "$settings_json_destination")"
if [ "$(command -v curl)" ]; then
  # Use curl if available
  curl -k "$RAW_SETTINGS_URL/settings.json" -o "$settings_json_destination"
elif [ "$(command -v wget)" ]; then
  # Use wget if available
  wget "$RAW_SETTINGS_URL/settings.json" -P "$settings_json_destination"
fi

# Install basic VSCode extensions by executing a remote script
curl -k "$RAW_SETTINGS_URL/install-default-extensions.sh" | /usr/bin/env sh
