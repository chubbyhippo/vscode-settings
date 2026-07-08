# Install extensions

## Uninstall extensions

### sh

```sh
code --list-extensions | xargs -L 1 code --uninstall-extension;code --list-extensions | xargs -L 1 code --uninstall-extension
```

### powershell

```powershell
code --list-extensions | foreach { code --uninstall-extension $_ };code --list-extensions | foreach { code --uninstall-extension $_ }
```

## Install extensions

### default

```sh
curl https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/install-default-extensions.sh | /usr/bin/env sh
```

```powershell
Invoke-RestMethod https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/install-default-extensions.sh | Invoke-Expression
```

### clojure

Calva.

```sh
curl https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/extensions/clojure.sh | /usr/bin/env sh
```

```powershell
Invoke-RestMethod https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/extensions/clojure.sh | Invoke-Expression
```

### go

Official Go extension.

```sh
curl https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/extensions/go.sh | /usr/bin/env sh
```

```powershell
Invoke-RestMethod https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/extensions/go.sh | Invoke-Expression
```

### java

Extension Pack for Java, Spring Boot Extension Pack.

```sh
curl https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/extensions/java.sh | /usr/bin/env sh
```

```powershell
Invoke-RestMethod https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/extensions/java.sh | Invoke-Expression
```

### javascript

Prettier, ESLint, js-debug, Vitest explorer.

```sh
curl https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/extensions/javascript.sh | /usr/bin/env sh
```

```powershell
Invoke-RestMethod https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/extensions/javascript.sh | Invoke-Expression
```

### python

Python, Black, debugpy, Pylint, Jupyter.

```sh
curl https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/extensions/python.sh | /usr/bin/env sh
```

```powershell
Invoke-RestMethod https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/extensions/python.sh | Invoke-Expression
```

### rust

rust-analyzer.

```sh
curl https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/extensions/rust.sh | /usr/bin/env sh
```

```powershell
Invoke-RestMethod https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/extensions/rust.sh | Invoke-Expression
```
