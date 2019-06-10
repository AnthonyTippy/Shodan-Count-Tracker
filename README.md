# Shodan-Count-Tracker
Tracks Audio Visual device search queries in one script.  Simply run bash script and it will output results into a .csv file to track the counts of devices on the internet.

When paired with a repeating daily,weekly, or monthly cron job you are able to create detailed reports on the activities regarding these search queries.


Script is currently set up to query the following.
- Crestron
- AMX
- Extron
- Cisco TelePresence
- Biamp
- IP-Phone
- Projector
- Chromecast
- Product:TV

#Usage

Edit search terms as you need

```
B=$(shodan count crestron)
C=$(shodan count AMX)
D=$(shodan count Extron)
E=$(shodan count Cisco TelePresence)
F=$(shodan count Biamp)
G=$(shodan count IP-Phone)
H=$(shodan count Projector)
I=$(shodan count Chromecast)
J=$(shodan count Product:TV)
```
