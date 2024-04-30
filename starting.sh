#!/bin/sh
#exit existing screens with the name CCminer
screen -S vipor -X quit 1>/dev/null 2>&1
#wipe any existing (dead) screens)
screen -wipe 1>/dev/null 2>&1
#create new disconnected session CCminer
screen -dmS vipor 1>/dev/null 2>&1
#run the miner
screen -S vipor -X stuff "~/ccminer/ccminer -a verus -o stratum+tcp://sg.vipor.net:5045 -u RS16FKw6kF8bTEn33SDtUsUfJiwY2X4usD.Arm -p x -t 2\n" 1>/dev/null 2>&1
printf '\nMining started.\n'
printf '===============\n'
printf '\nManual:\n'
printf 'start: ~/.ccminer/start.sh\n'
printf 'stop: screen -X -S CCminer quit\n'
printf '\nmonitor mining: screen -x CCminer\n'
printf "exit monitor: 'CTRL-a' followed by 'd'\n\n"
