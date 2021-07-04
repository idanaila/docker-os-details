#!/bin/bash

function logo(){

cat << 'EOF'
  ____   _____    _____ _               _        
 / __ \ / ____|  / ____| |             | |       
| |  | | (___   | |    | |__   ___  ___| | _____ 
| |  | |\___ \  | |    | '_ \ / _ \/ __| |/ / __|
| |__| |____) | | |____| | | |  __/ (__|   <\__ \
 \____/|_____/   \_____|_| |_|\___|\___|_|\_\___/
                                                       
EOF

}

function checks(){

echo "Hostname: $(hostname)"
echo "CPU: $(cat /proc/cpuinfo | grep "model name" | awk '{print $6,$7,$9}' | sed -n '1p') x $(cat /proc/cpuinfo | grep "model name" | wc -l)"
echo "OS: $(cat /etc/os-release | grep ID= | sed -n 1p | cut -d "=" -f2 | tr '"' ' ')"
#echo "OS: $(cat /etc/os-release | grep "PRETTY_NAME" | cut -d "=" -f2 | tr '"' ' ')"
echo "Memory: $(free -mh | sed -n 2p | awk '{print $3}') / $(free -mh | sed -n 2p | awk '{print $2}')"
echo "Uptime: $(uptime | awk '{print $3}' | cut -d "," -f1)"
echo "Users loged: $(w | sed -n '/USER/,/{exit}/p' | tail -n +2 | wc -l)"
}
echo
paste <(logo) <(checks)
echo
echo -e "########## temperatures ##########\n"
declare -a arr=($(lsblk -nd --output NAME))
for i in ${arr[@]}; do
 hddtemp /dev/$i
done
sensors | grep "Core*" | awk '{print $1, $2, $3}'
echo -e "\n"
