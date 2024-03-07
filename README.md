# curl
```
curl -s https://raw.githubusercontent.com/chubbyhippo/code-settings/main/install.sh | /usr/bin/env sh
```
# wget
```
wget -qO - https://raw.githubusercontent.com/chubbyhippo/code-settings/main/install.sh | /usr/bin/env sh
```
# powershell
```
irm https://raw.githubusercontent.com/chubbyhippo/code-settings/main/install.ps1| iex
```
# uninstall extensions
## powershell
```
code --list-extensions | foreach { code --uninstall-extension $_ };code --list-extensions | foreach { code --uninstall-extension $_ }
```
## sh
```
code --list-extensions | xargs -L 1 code --uninstall-extension;code --list-extensions | xargs -L 1 code --uninstall-extension
```
