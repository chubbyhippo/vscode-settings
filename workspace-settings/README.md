# workspace settings

Per-language `settings.json` templates for a project's `.vscode/` folder.
Run the matching one-liner from the project root — it creates `.vscode/` and
drops the template in as `.vscode/settings.json` (overwriting one that's
already there).

## clojure

Prettier as the HTML formatter — Calva already owns the Clojure side.

```sh
mkdir -p .vscode && curl -k https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/workspace-settings/clojure/settings.json -o .vscode/settings.json
```

## java

Build configuration updates applied automatically (no "would you like to
synchronize?" prompts), and the JDT null-analysis annotation lists emptied.

```sh
mkdir -p .vscode && curl -k https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/workspace-settings/java/settings.json -o .vscode/settings.json
```

## javascript

Emmet abbreviations in plain `.js` files treated as JSX
(`javascript` → `javascriptreact`).

```sh
mkdir -p .vscode && curl -k https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/workspace-settings/javascript/settings.json -o .vscode/settings.json
```

## typescript

Prettier as the formatter for TypeScript and JSONC, and auto-imports written
with relative module specifiers.

```sh
mkdir -p .vscode && curl -k https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/workspace-settings/typescript/settings.json -o .vscode/settings.json
```
