# workspace settings

Run from the project root. Overwrites an existing `.vscode/settings.json`.

## clojure

Prettier as the HTML formatter.

```sh
mkdir -p .vscode && curl -k https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/workspace-settings/clojure/settings.json -o .vscode/settings.json
```

## java

Automatic build-configuration updates; null-analysis annotation lists
emptied.

```sh
mkdir -p .vscode && curl -k https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/workspace-settings/java/settings.json -o .vscode/settings.json
```

## javascript

Emmet in `.js` files as JSX.

```sh
mkdir -p .vscode && curl -k https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/workspace-settings/javascript/settings.json -o .vscode/settings.json
```

## typescript

Prettier for TypeScript and JSONC; relative import specifiers.

```sh
mkdir -p .vscode && curl -k https://raw.githubusercontent.com/chubbyhippo/vscode-settings/refs/heads/main/workspace-settings/typescript/settings.json -o .vscode/settings.json
```
