#!/bin/bash 
# a better version of curl 

cargo install xh 

cp ~/.cargo/bin/xh /usr/bin/xh 

echo "

add to ~/.bash_aliases 

alias curl='xh' ? 
alias curld='xh --download' ? 

" 


