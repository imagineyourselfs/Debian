#!/bin/bash 
# bat is a better cat 

cargo install --locked bat 

cp ~/.cargo/bin/bat /usr/bin/bat 

echo "

Suggestion:

add 'alias cat=\"bat\"'


" 
