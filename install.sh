#!/bin/bash

sudo systemctl stop ipsec
sudo apt update
sudo apt install -y tinyproxy
sudo sed -i '/Allow/s/^/#/' /etc/tinyproxy/tinyproxy.conf
sudo systemctl restart tinyproxy
wget https://raw.githubusercontent.com/aimarkhwang/adproxy/master/chmac
sudo rm -rf /bin/chmac
sudo cp ./chmac /bin/chmac
sudo chmod +x /bin/chmac