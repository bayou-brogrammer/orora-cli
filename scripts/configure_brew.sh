#!/bin/bash

# Fixes brew intallation scripts and path from Bluefin CLI. This will be deprecated in the future.

source /scripts/ansi_colors.sh

echo -e "${GREEN}### Configuring Brew.. ###"

mv -v /etc/profile.d/00-bluefin-cli-brew-firstrun.sh /etc/profile.d/00-orora-cli-brew-firstrun.sh
sed -i 's/Bluefin/Orora/g; s/bluefin/orora/g' /etc/profile.d/00-orora-cli-brew-firstrun.sh
