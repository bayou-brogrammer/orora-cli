#!/bin/bash

source /scripts/ansi_colors.sh
source /etc/profile.d/01-orora-xdg.sh

echo -e "${GREEN}### Configuring nvim.. ###"

git clone https://github.com/bayou-brogrammer/AtomicNvim /XDG_DIRS/config/nvim
nvim --headless "+Lazy! sync" +qa
