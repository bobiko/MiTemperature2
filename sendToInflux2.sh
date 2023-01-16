#!/bin/bash

#use e.g with that script: MySensor.sh
#!/bin/bash
#DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
#$DIR/LYWSD03MMC.py -d <device> -2p -p2 75 -o2 -4 -p1 33 -o1 -6 -r --debounce --skipidentical 50 --name MySensor --callback sendToInflux.sh

curl --request POST "http://192.168.8.138:8086/api/v2/write?org=homelab-org&bucket=sensors&precision=s" \
--header "Authorization: Token 5up3r-S3cr3t-auth-t0k3n" \
--data-binary "AquaraBluetoothSensors,sensorname=$2 temperature=$3,calibratedHumidity=$6,voltage=$5,humidity=$4,batteryLevel=$7 $8"
