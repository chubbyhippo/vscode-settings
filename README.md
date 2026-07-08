# My VS Code setup

This is my personal VS Code configuration — settings and a handful of
extensions I actually use. The centerpiece is modal editing that mirrors my
Emacs `meow` setup — and these days it *is* meow, not an emulation of it.

## Modal editing, the meow way (codemeow)

Modal editing comes from [codemeow](https://github.com/chubbyhippo/codemeow) — a
native port of Emacs [meow](https://github.com/meow-edit/meow) for VS Code and
VSCodium, sibling of the IntelliJ `ideameow` plugin. There is nothing to
configure in this repo for it: the extension implements meow's
NORMAL/INSERT/MOTION/KEYPAD states itself, and its entire keymap lives in the
`.codemeowrc` bundled with it. Override any key entry by entry in
`~/.codemeowrc` — `SPC c m` opens it (the first press seeds it as a full copy
of the defaults), `SPC c M` reloads it.

It isn't on the marketplace: it builds from source and side-loads as a plain
extension folder into every detected VS Code / VSCodium (Linux, macOS, the WSL
server, and the Windows editors when run from WSL). Needs node 24, or
[mise](https://mise.jdx.dev) to fetch it:

```sh
git clone https://github.com/chubbyhippo/codemeow.git
cd codemeow && ./setup.sh
```

Restart the editor and you're in NORMAL mode. See the
[codemeow README](https://github.com/chubbyhippo/codemeow) for the layout tour
and the known deviations from Emacs meow.

What used to take a couple hundred hand-curated keybindings and a rewritten
Dance object menu in this repo now ships with the extension:

- the meow QWERTY layout exactly as `init.el` defines it — movement and
  selection expansion (with the numbered expand hints painted in the buffer,
  no relative-gutter squinting), things on `,` `.` `[` `]` with meow's real
  char-thing table, kill/save/yank, the grab system including swap/sync
  (`G` `R` `Y`), undo-in-selection (`U`), beacon as native multi-cursors
- the full `SPC` keypad — `SPC x` / `SPC c` / `SPC m` / `SPC w` and the
  feature groups — with which-key menus while you type and a `SPC ?`
  cheatsheet
- avy jumps, ported natively (`S` goto-char-timer, `Q` goto-line,
  `SPC m o` / `SPC c j`) — the Code Ace Jumper dependency is gone
- MOTION mode in the workbench trees (`j k h l` move, `q` hides the side
  bar, every other key stays native) and windmove on `Shift+arrows` /
  `SPC w h j k l`

That's why this repo no longer ships a `keybindings.json` at all: the modal
keymap lives inside the extension (rebindable through `~/.codemeowrc`), and
everything else stays stock VS Code.

> [!NOTE]
> codemeow takes over the editor's `type` command, so it can't live with
> VSCodeVim *or* Dance. Coming from an older cut of this repo, see Dance off
> first:
>
> ```sh
> code --uninstall-extension gregoire.dance
> ```

## Getting set up

Two things to pull in from this repo: my settings, and the extensions
(codemeow installs from its own repo — see above). Grab whichever line
matches your shell — they all just download the files into your VS Code
config and run the `code` CLI for you.

### Settings

This drops `settings.json` into place and installs the default extension pack.

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

### Extensions

The default pack: the GitHub theme, Material icons, the Git tools, SonarLint,
Prettier, and the rest of my everyday kit — modal editing is codemeow,
installed separately above.

curl:

```sh
curl https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/install-default-extensions.sh | /usr/bin/env sh
```

PowerShell:

```powershell
Invoke-RestMethod https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/install-default-extensions.sh | Invoke-Expression
```

Working in a particular language? There are smaller, per-language packs
(Clojure, Go, Java, JavaScript, Python, Rust) in the
[extensions folder](https://github.com/chubbyhippo/vscode-settings/tree/main/extensions) —
install only the ones you need.

## Starting fresh

Want a clean slate before reinstalling? This pulls out *every* extension you
have. It runs the sweep twice on purpose — the second pass clears anything
that was only hanging on as another extension's dependency.

sh:

```sh
code --list-extensions | xargs -L 1 code --uninstall-extension;code --list-extensions | xargs -L 1 code --uninstall-extension
```

PowerShell:

```powershell
code --list-extensions | foreach { code --uninstall-extension $_ };code --list-extensions | foreach { code --uninstall-extension $_ }
```
