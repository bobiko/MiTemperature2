#!/bin/bash

#use e.g with that script: MySensor.sh
#!/bin/bash
#DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
#$DIR/LYWSD03MMC.py -d <device> -2p -p2 75 -o2 -4 -p1 33 -o1 -6 -r --debounce --skipidentical 50 --name MySensor --callback sendToInflux.sh


curl -i -u "admin:12345678" -XPOST http://192.168.8.2:8086/sensors\&precision=s --data-binary "AquaraBluetoothSensors,sensorname=$2 temperature=$3,calibratedHumidity=$6,voltage=$5 $7"
