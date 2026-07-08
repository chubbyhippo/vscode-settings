# Install extensions

Per-language extension packs — each script is a few `code --install-extension`
lines, so the same file works piped into `sh` or PowerShell. The default
(everyday) pack lives at the repo root as `install-default-extensions.sh`;
what it installs is listed in the [main README](../README.md).

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

The everyday kit — theme, git tools, formatters, and the rest (see the
[main README](../README.md) for the full table).

```sh
curl https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/install-default-extensions.sh | /usr/bin/env sh
```

```powershell
Invoke-RestMethod https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/install-default-extensions.sh | Invoke-Expression
```

### clojure

[Calva](https://marketplace.visualstudio.com/items?itemName=betterthantomorrow.calva) —
REPL, formatter, and paredit in one.

```sh
curl https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/extensions/clojure.sh | /usr/bin/env sh
```

```powershell
Invoke-RestMethod https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/extensions/clojure.sh | Invoke-Expression
```

### go

The official Go extension (gopls, delve).

```sh
curl https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/extensions/go.sh | /usr/bin/env sh
```

```powershell
Invoke-RestMethod https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/extensions/go.sh | Invoke-Expression
```

### java

Extension Pack for Java plus the Spring Boot Extension Pack.

```sh
curl https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/extensions/java.sh | /usr/bin/env sh
```

```powershell
Invoke-RestMethod https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/extensions/java.sh | Invoke-Expression
```

### javascript

Prettier, ESLint, the js-debug pair, and the Vitest explorer.

```sh
curl https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/extensions/javascript.sh | /usr/bin/env sh
```

```powershell
Invoke-RestMethod https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/extensions/javascript.sh | Invoke-Expression
```

### python

Python, Black, debugpy, Pylint, and Jupyter.

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
