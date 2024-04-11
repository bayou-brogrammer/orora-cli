# orora-cli

## Description

This terminal is based off of [bluefin-cli](https://github.com/ublue-os/toolboxes/tree/main/toolboxes/bluefin-cli) from the [Universal Blue](https://universal-blue.org/) project.

### Changes to Bluefin-CLI

#### Neovim

- lazy neovim config included in image
- lazy neovim plugins automatically installed

#### TMUX

- tmux config included in image
- tmux plugins automatically installed

#### Github Copilot

- github copilot available for both neovim and bash
- additional bash aliases

#### Packages

- additional [packages](https://github.com/noelmiller/orora-cli/blob/main/files/extra-packages) that are not in the base image

## How to use

### Included in Orora

[Isengard](https://github.com/noelmiller/isengard) is my custom image based off of [Bazzite](https://github.com/ublue-os/bazzite). It is configured as a quadlet and can be made available in Ptyxis by default.

### Create DistroBox

Using [Distrobox](https://github.com/89luca89/distrobox):

    distrobox create -i ghcr.io/noelmiller/orora-cli -n orora-cli --volume orora-cli-gh:/XDG_DIRS/config/gh:rslave --volume orora-cli-github-copilot:/XDG_DIRS/config/github-copilot:rslave --volume orora-cli-zoxide:/XDG_DIRS/local/share/zoxide:rslave --volume orora-cli-atuin:/XDG_DIRS/local/share/atuin:rslave --volume orora-cli-lazygit:/XDG_DIRS/config/lazygit:rslave
    distrobox enter orora-cli

### Make your own

Fork and add programs to this image - over time you'll end up with the perfect CLI for you.
Keeping it as a pet works, though the author recommends leaving all your config in git and routinely pulling a new image.

## Verification

These images are signed with sisgstore's [cosign](https://docs.sigstore.dev/cosign/overview/). You can verify the signature by downloading the `cosign.pub` key from this repo and running the following command:

    cosign verify --key cosign.pub ghcr.io/noelmiller/orora-cli

If you're forking this repo you should [read the docs](https://docs.github.com/en/actions/security-guides/encrypted-secrets) on keeping secrets in github. You need to [generate a new keypair](https://docs.sigstore.dev/cosign/overview/) with cosign. The public key can be in your public repo (your users need it to check the signatures), and you can paste the private key in Settings -> Secrets -> Actions.
