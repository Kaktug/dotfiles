#!/bin/bash
#/ Install Atom plugins

declare -a packages=(
  'atom-beautify'
  'atom-ide-ui'
  'atom-live-server'
  'atom-to-illustrator'
  'atom-to-photoshop'
  'compare-files'
  'file-icons'
  'ide-typescript'
  'language-actionscript3'
  'language-autohotkey2'
  'language-flex'
  'language-vbscript'
  'minimap'
  'pigments'
  'react')

for i in "${packages[@]}"; do
  apm install $i
done
