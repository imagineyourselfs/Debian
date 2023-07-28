#!/bin/bash 
# if Rust is installed as user, nothing to do
# if Rust is installed as root, 
# Note: before trying to install, be sure you have libssl-dev and pkg-config

apt install libssl-dev pkg-config -y 

sleep 5

cargo install codeberg-cli 

source $HOME/.cargo/env

copy ~/.cargo/bin/berg /usr/bin/berg 

echo "installation complete! Client name is 'berg'\n try: berg --help "


