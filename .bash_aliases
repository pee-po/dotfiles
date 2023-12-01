#!/usr/bin/env bash
# Git dotfiles repo
# Following: https://www.atlassian.com/git/tutorials/dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias cvpn='nordvpn connect && nordvpn set killswitch on'
alias dvpn='nordvpn set killswitch off && nordvpn disconnect'
alias vim=nvim

