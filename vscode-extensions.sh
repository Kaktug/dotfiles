#!/bin/bash
# Install Visual Studio Code Pplugins

declare -a packages=(
 'Adobe.extendscript-debug'
 'bowlerhatllc.vscode-nextgenas'
 'EditorConfig.EditorConfig'
 'file-icons.file-icons'
 'HookyQR.beautify'
 'slevesque.vscode-autohotkey'
 'akamud.vscode-theme-onelight'
 'bierner.emojisense'
)

for extension in "${packages[@]}"; do
  code --install-extension $extension
done
