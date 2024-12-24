# curl
```sh
curl -s https://raw.githubusercontent.com/chubbyhippo/code-settings/main/install.sh | /usr/bin/env sh
```
# wget
```sh
wget -qO - https://raw.githubusercontent.com/chubbyhippo/code-settings/main/install.sh | /usr/bin/env sh
```
# powershell
```powershell
irm https://raw.githubusercontent.com/chubbyhippo/code-settings/main/install.ps1| iex
```
# uninstall extensions
## powershell
```powershell
code --list-extensions | foreach { code --uninstall-extension $_ };code --list-extensions | foreach { code --uninstall-extension $_ }
```
## sh
```sh
code --list-extensions | xargs -L 1 code --uninstall-extension;code --list-extensions | xargs -L 1 code --uninstall-extension
```
