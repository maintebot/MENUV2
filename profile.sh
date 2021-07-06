﻿#!/bin/bash
echo " "
cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
tram=$( free -m | awk 'NR==2 {print $2}' )
swap=$( free -m | awk 'NR==4 {print $2}' )
up=$(uptime|awk '{ $1=$2=$(NF-6)=$(NF-5)=$(NF-4)=$(NF-3)=$(NF-2)=$(NF-1)=$NF=""; print }')
ip=$( curl -s icanhazip.com )	
clear
echo ""
echo ""			
echo -e "\e[0mIp Address : \e[032;1m $ip"
echo -e "\e[0mCPU Model : \e[032;1m $cname"
echo -e "\e[0mNumber Of Cores : \e[032;1m $cores"
echo -e "\e[0mCPU Frequency  : \e[032;1m $freq MHz"
echo -e "\e[0mTotal Amount Of RAM : \e[032;1m $tram MB"
echo -e "\e[0mTotal Amount Of Swap : \e[032;1m $swap MB"
echo -e "\e[0mSystem Uptime : \e[032;1m $up"
echo ""
echo -e "\e[0m█▀▀█ █▀▀█ █▀▀▀█ █▀▀▀█ █▀▀▀█"
echo -e "\e[0m█░▄▄ █▄▄█ ▀▀▀▄▄ ▀▀▀▄▄ ▀▀▀▄▄"
echo -e "\e[0m█▄▄█ █░▒█ █▄▄▄█ █▄▄▄█ █▄▄▄█"
echo ""
echo -e " \e[0m"
echo "----------------------------------------------------------------"
echo -e "\e[0mWELCOME TO MENUV2 LITE VERSION"
echo -e "\e[0m        (Vmess, Vless & Trojan Only)"
echo -e " \e[0m"
echo "----------------------------------------------------------------"
echo -e "\e[0mRebuild By : \e[032;1m @maintenancez"
echo -e "\e[0mThanks To : \e[032;1m Tegar Prayuda"
echo -e "\e[0mTelegram Group : \e[032;1m https://t.me/NGE_GASSS"
echo ""
echo -e " \e[0m"
echo "----------------------------------------------------------------"
echo "[ 1 ] Create Vmess"
echo "[ 2 ] Create Vless"
echo "[ 3 ] Create Trojan"
echo "----------------------------------------------------------------"
echo "[ 4 ] Check Ws "
echo "[ 5 ] Check Vless"
echo "[ 6 ] Check Trojan"
echo "----------------------------------------------------------------"
echo "[ 7 ] Change Port Vmess"
echo "[ 8 ] Change Port Vless"
echo "[ 9 ] Change Port Trojan"
echo "----------------------------------------------------------------"
echo "[ 10] Renew Vmess"
echo "[ 11] Renew Vless"
echo "[ 12] Renew Trojan"
echo "----------------------------------------------------------------"
echo "[ 13] Delete Vmess"
echo "[ 14] Delete Vless"
echo "[ 15] Delete Trojan"
echo "----------------------------------------------------------------"
echo "[ 16] Add New Domain"
echo "[ 17] Add New Cert"
echo "[ 18] Exit"
echo "----------------------------------------------------------------"
echo -e " \e[0m"
read -p "Insert Options (1/18) : " mek
if [ $mek = 1 ]; then
add-ws
elif [ $mek = 2 ]; then
add-vless
elif [ $mek = 3 ]; then
add-tr
elif [ $mek = 4 ]; then
cek-ws	       
elif [ $mek = 5 ]; then
cek-vless      
elif [ $mek = 6 ]; then
cek-tr	       
elif [ $mek = 7 ]; then
port-ws       
elif [ $mek = 8 ]; then
port-vless      
elif [ $mek = 9 ]; then
port-tr
elif [ $mek = 10 ]; then
renew-ws
elif [ $mek = 11 ]; then
renew-vless
elif [ $mek = 12 ]; then
renew-tr
elif [ $mek = 13 ]; then
del-ws
elif [ $mek = 14 ]; then
del-vless
elif [ $mek = 15 ]; then
del-tr
elif [ $mek = 16 ]; then
domen
elif [ $mek = 17 ]; then
cert
elif [ $mek = 18 ]; then
echo ""
echo " Exit"
sleep 2
exit 0
else
echo ""
echo " Change Not Found"
echo ""
fi