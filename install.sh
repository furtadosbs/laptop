#!/bin/bash

# Install dependencies with apt-get
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y build-essential rustc libssl-dev libyaml-dev zlib1g-dev libgmp-dev stow

# Install Mise version manager
curl https://mise.run | sh
echo 'eval "$(~/.local/bin/mise activate)"' >> ~/.bashrc
source ~/.bashrc
