#!/bin/bash

#use e.g with that script: MySensor.sh
#!/bin/bash
#DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
#$DIR/LYWSD03MMC.py -d <device> -2p -p2 75 -o2 -4 -p1 33 -o1 -6 -r --debounce --skipidentical 50 --name MySensor --callback sendToInflux.sh

curl --request POST "http://localhost:8086/api/v2/write?org=bobiko&bucket=sensors&precision=s" \
--header "Authorization: Token bbSji2EmsBdHkW4F9Sncu8TqNR3v1NxZZPvf2-DdmttzTxTq8KRnXXV67SkF1PWEuTb_VMyVgV9bUNdGJzXP0w==" \
--data-binary "AquaraBluetoothSensors,sensorname=$2 temperature=$3,calibratedHumidity=$6,voltage=$5,humidity=$4,batteryLevel=$7 $8"
