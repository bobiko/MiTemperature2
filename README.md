# Read data from Xiaomi Mijia LYWSD03MMC Bluetooth 4.2 Temperature Humidity sensor (FORKED)



## USAGE
```
./LYWSD03MMC.py -d <device> -2p -p2 75 -o2 -4 -p1 33 -o1 -6 -r --debounce --skipidentical 50 --name MySensor --callback sendToInflux2.sh
```

### PM2

```
pm2 start LYWSD03MMC.py --interpreter="/usr/bin/python3" --name="MiTemperature2Office" -- -d='A4:C1:38:1A:59:62' -2p -p2='75' -o2 -4 -p1='33' -o1 -6 -r --debounce --skipidentical='50' -b=1000 --name='Office' --callback='sendToInflux2.sh'

pm2 start LYWSD03MMC.py --interpreter="/usr/bin/python3" --name="MiTemperature2OSalon" -- -d='A4:C1:38:86:F6:D7' -2p -p2='75' -o2 -4 -p1='33' -o1 -6 -r --debounce --skipidentical='50' -b=1000 --name='Salon' --callback='sendToInflux2.sh'

pm2 start LYWSD03MMC.py --interpreter="/usr/bin/python3" --name="MiTemperature2OWindow" -- -d='A4:C1:38:57:46:84' -2p -p2='75' -o2 -4 -p1='33' -o1 -6 -r --debounce --skipidentical='50' -b=1000 --name='Window' --callback='sendToInflux2.sh'

```

## SOURCE
* [Original README](./README_original.nd)
* [Forked from @JsBergbau](https://github.com/JsBergbau/MiTemperature2)
