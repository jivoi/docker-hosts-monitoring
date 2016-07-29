#!/bin/sh
apt-get -y install python-pip
pip-install docker-compose

docker-compose up -d

wget https://dl.influxdata.com/telegraf/releases/telegraf_1.0.0-beta3_amd64.deb
dpkg -i telegraf_1.0.0-beta3_amd64.deb
cp telegraf.conf /etc/telegraf/telegraf.conf

usermod -aG docker telegraf
service telegraf restart