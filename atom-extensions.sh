#!/bin/bash
#/ Install Atom plugins

declare -a packages=(
  'atom-beautify'
  'atom-ide-ui'
  'atom-live-server'
  'file-icons'
  'ide-typescript'
  'minimap'
  'pigments'
  'react')

for i in "${packages[@]}"; do
  apm install $i
done
