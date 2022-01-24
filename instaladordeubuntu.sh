#!bin/sh
sudo apt install bind9 -y
sudo ifconfig eth0 192.168.11.1 netmask 255.255.255.0
sudo echo ubuntu11 > /etc/hostname
sudo echo nameserver 192.168.11.1 /n domain smr11 > /etc/resolv.conf
zona directa /n zone "smr11"{ /n type master; /n file "/etc/bind/db.directa"; /n }; zona inversa /n zone "11.168.192.in-addr-arpa"{ /n type master; /n file "/etc/bind/db.inversa"; /n }; > /etc/bind/named.conf.local
sudo cp zonas/db.directa /etc/bind/db.directa
sudo cp zonas/db.inversa /etc/bind/db.inversa
sudo service bind9 restart