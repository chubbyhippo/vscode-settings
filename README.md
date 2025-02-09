# Install settings & keymappings
## curl
```shell
curl https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/install.sh | /usr/bin/env sh
```
## wget
```shell
wget -qO - https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/install.sh | /usr/bin/env sh
```
## powershell
```powershell
irm https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/install.ps1 | iex
```
# Install extensions
## default
```curl
curl https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/install-default-extensions.sh | /usr/bin/env sh
```
```powershell
Invoke-RestMethod https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/install-extensions.sh | Invoke-Expression
```
## clojure
```curl
curl https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/extensions/clojure.sh | /usr/bin/env sh
```
```powershell
Invoke-RestMethod https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/extensions/clojure.sh | Invoke-Expression
```
## java
```curl
curl https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/extensions/java.sh | /usr/bin/env sh
```
```powershell
Invoke-RestMethod https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/extensions/java.sh | Invoke-Expression
```
## javascript
```curl
curl https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/extensions/javascript.sh | /usr/bin/env sh
```
```powershell
Invoke-RestMethod https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/extensions/javascript.sh | Invoke-Expression
```
# Uninstall extensions
## sh
```shell
code --list-extensions | xargs -L 1 code --uninstall-extension;code --list-extensions | xargs -L 1 code --uninstall-extension
```
## powershell
```powershell
code --list-extensions | foreach { code --uninstall-extension $_ };code --list-extensions | foreach { code --uninstall-extension $_ }
```
