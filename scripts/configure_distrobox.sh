#!/bin/bash

source /scripts/ansi_colors.sh

echo "### Configuring Distrobox Aliases.. ###"

ln -fsv /usr/bin/distrobox-host-exec /usr/bin/ujust
ln -fs /usr/bin/distrobox-host-exec /usr/bin/wl-copy
ln -fs /usr/bin/distrobox-host-exec /usr/bin/flatpak
ln -fsv /usr/bin/distrobox-host-exec /usr/local/bin/code

ln -fs /usr/bin/distrobox-host-exec /usr/bin/gpg-agent
ln -fs /usr/bin/distrobox-host-exec /usr/bin/pinentry-gnome3

ln -fsv /usr/bin/distrobox-host-exec /usr/bin/distrobox
ln -fs /usr/bin/distrobox-host-exec /usr/bin/distrobox-list
