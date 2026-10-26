#!/usr/bin/env sh

# Initialize destination variables for settings.json and keybindings.json
settings_json_destination=""
keybindings_json_destination=""

# Detect the operating system and set file paths accordingly
case $(uname) in
"Linux")
  # For Linux systems
  settings_json_destination="$HOME/.config/Code/User/settings.json"
  keybindings_json_destination="$HOME/.config/Code/User/keybindings.json"
  ;;
"Darwin")
  # For macOS systems
  settings_json_destination="$HOME/Library/Application Support/Code/User/settings.json"
  keybindings_json_destination="$HOME/Library/Application Support/Code/User/keybindings.json"
  ;;
"MINGW"*)
  # For Windows systems using MinGW
  case $(command -v code 2>/dev/null) in
  *"/scoop/apps/vscode/"*)
    # If VSCode was installed via Scoop
    echo "vscode was installed via Scoop."
    settings_json_destination="$HOME/scoop/apps/vscode/current/data/user-data/User/settings.json"
    keybindings_json_destination="$HOME/scoop/apps/vscode/current/data/user-data/User/keybindings.json"
    ;;
  *)
    # Default VSCode installation path in Windows
    settings_json_destination="$HOME/AppData/Roaming/Code/User/settings.json"
    keybindings_json_destination="$HOME/AppData/Roaming/Code/User/keybindings.json"
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
echo "$keybindings_json_destination"

# Remove settings.json and keybindings.json if present
if [ -n "$settings_json_destination" ] && [ -f "$settings_json_destination" ]; then
  rm -f "$settings_json_destination"
  echo "Removed $settings_json_destination"
fi

if [ -n "$keybindings_json_destination" ] && [ -f "$keybindings_json_destination" ]; then
  rm -f "$keybindings_json_destination"
  echo "Removed $keybindings_json_destination"
fi
