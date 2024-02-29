Invoke-RestMethod https://raw.githubusercontent.com/chubbyhippo/code-settings/main/install-extensions.sh | Invoke-Expression

$url = "https://raw.githubusercontent.com/chubbyhippo/code-settings/main/settings.json"
$destinationPath = "$Home\AppData\Roaming\Code\User\settings.json"
Invoke-WebRequest -Uri $url -OutFile $destinationPath
