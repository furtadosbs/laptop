#!/bin/bash

install_updates() {
  sudo apt-get update
  sudo apt-get upgrade -y
}

install() {
  sudo apt-get -y install $@
}

install_dependencies() {
  install build-essential rustc libssl-dev libyaml-dev zlib1g-dev libgmp-dev git
}

install_mise() {
  curl https://mise.run | sh
  echo 'eval "$(~/.local/bin/mise activate bash)"' >> ~/.bashrc
}

install_tmux() {
  install tmux
}

install_neovim() {
  install neovim
}

install_starship() {
  curl -sS https://starship.rs/install.sh | sh
}

main() {
  install_updates
  install_dependencies
  install_mise
  install_tmux
  install_neovim
  install_starship
}


main
