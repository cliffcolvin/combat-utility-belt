#!/bin/bash

# Combat Utility Belt Module Packaging Script
echo "Packaging Combat Utility Belt for Foundry VTT..."

# Remove any existing package
rm -f module.zip

# Create the zip package
zip -r module.zip \
  module.json \
  combat-utility-belt.js \
  modules/ \
  lang/ \
  styles/ \
  templates/ \
  packs/ \
  library/ \
  icons/ \
  img/ \
  condition-maps/ \
  API.md \
  CHANGELOG.md \
  LICENSE \
  README.md \
  patrons.json \
  -x "*.git*" "node_modules/*" "*.DS_Store" "package-module.sh"

echo "Module packaged as module.zip"
echo "Ready for installation or GitHub release!" 