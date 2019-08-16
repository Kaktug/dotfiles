#!/bin/bash
# Install Visual Studio Code Pplugins

declare -a packages=(
 'Adobe.extendscript-debug'
 'bowlerhatllc.vscode-nextgenas'
 'EditorConfig.EditorConfig'
 'file-icons.file-icons'
 'HookyQR.beautify'
 'ms-vscode.atom-keybindings'
 'slevesque.vscode-autohotkey'
)

for extension in "${packages[@]}"; do
  code --install-extension $extension
done
