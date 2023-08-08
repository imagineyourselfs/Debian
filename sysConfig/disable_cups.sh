sudo systemctl disable cups.socket cups.path cups.service
sudo systemctl mask cups.socket cups.path cups.service
sudo systemctl kill --signal=SIGKILL cups.service
sudo systemctl stop cups.socket cups.path
sudo systemctl disable cups-browsed
sudo systemctl mask cups-browsed
sudo systemctl stop cups-browsed

