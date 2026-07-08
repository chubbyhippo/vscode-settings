# vscode-settings

VS Code settings and extension install scripts. Modal editing comes from
[codemeow](https://github.com/chubbyhippo/codemeow), a native port of Emacs
[meow](https://github.com/meow-edit/meow) — its keymap ships inside the
extension; override keys in `~/.codemeowrc` (`SPC c m` opens it, `SPC c M`
reloads it).

## Install settings + default extensions

curl:

```sh
curl https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/install.sh | /usr/bin/env sh
```

wget:

```sh
wget -qO - https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/install.sh | /usr/bin/env sh
```

PowerShell:

```powershell
irm https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/install.ps1 | iex
```

## Install codemeow

1. Remove Dance or VSCodeVim if installed (they conflict on the `type`
   command):

   ```sh
   code --uninstall-extension gregoire.dance
   code --uninstall-extension vscodevim.vim
   ```

2. Build and side-load (needs node 24, or [mise](https://mise.jdx.dev);
   from WSL this also reaches the Windows editors):

   ```sh
   git clone https://github.com/chubbyhippo/codemeow.git
   cd codemeow && ./setup.sh
   ```

3. Restart the editor.

## Install extensions only

curl:

```sh
curl https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/install-default-extensions.sh | /usr/bin/env sh
```

PowerShell:

```powershell
Invoke-RestMethod https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/install-default-extensions.sh | Invoke-Expression
```

Per-language packs (Clojure, Go, Java, JavaScript, Python, Rust):
[extensions/README.md](extensions/README.md)

## Install workspace settings (per project)

Per-language `.vscode/settings.json` templates:
[workspace-settings/README.md](workspace-settings/README.md)

## Uninstall all extensions

Runs twice so extensions that were only dependencies go too.

sh:

```sh
code --list-extensions | xargs -L 1 code --uninstall-extension;code --list-extensions | xargs -L 1 code --uninstall-extension
```

PowerShell:

```powershell
code --list-extensions | foreach { code --uninstall-extension $_ };code --list-extensions | foreach { code --uninstall-extension $_ }
```
