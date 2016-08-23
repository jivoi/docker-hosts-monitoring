#!/bin/sh
sudo apt-get -y install python-pip
sudo pip-install docker-compose

docker-compose up -d

wget https://dl.influxdata.com/telegraf/releases/telegraf_1.0.0-beta3_amd64.deb
sudo dpkg -i telegraf_1.0.0-beta3_amd64.deb
cp telegraf.conf /etc/telegraf/telegraf.conf

sudo usermod -aG docker telegraf
sudo service telegraf start
