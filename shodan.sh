#!/bin/sh

printf '''  _________.__               .___               ___________                     __                 
 /   _____/|  |__   ____   __| _/____    ____   \__    ___/___________    ____ |  | __ ___________ 
 \_____  \ |  |  \ /  _ \ / __ |\__  \  /    \    |    |  \_  __ \__  \ _/ ___\|  |/ // __ \_  __ \
 /        \|   Y  (  <_> ) /_/ | / __ \|   |  \   |    |   |  | \// __ \\  \___|    <\  ___/|  | \/
/_______  /|___|  /\____/\____ |(____  /___|  /   |____|   |__|  (____  /\___  >__|_ \\___  >__|   
        \/      \/            \/     \/     \/                        \/     \/     \/    \/       '''

#Install Shodan (x2 for errors)
sudo easy_install shodan
sudo easy_install shodan

#Initialization of Shodan API KEY
shodan init [INSERT SHODAN API KEY]

#Header Creation
echo "Date", "Crestron", "AMX", "Extron", "Cisco TelePresence", "Biamp" , "IP-Phone" , "Projector" , "Chromecast" , "Product:TV"  >> shodan.csv

#Today's date
A=$(date "+%m/%d/%Y")

#Shodan Search Queries
B=$(shodan count crestron)
C=$(shodan count AMX)
D=$(shodan count Extron)
E=$(shodan count Cisco TelePresence)
F=$(shodan count Biamp)
G=$(shodan count IP-Phone)
H=$(shodan count Projector)
I=$(shodan count Chromecast)
J=$(shodan count Product:TV)

#outputs variables A-J in .csv file for easy data analysis
printf '%s\n' $A $B $C $D $E $F $G $H $I $J | paste -sd ',' >> shodan.csv
