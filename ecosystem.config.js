module.exports = {
  apps: [
    {
      "name": "MiTemperature2Office",
      "script": "/home/pi/projekty/MiTemperature2/LYWSD03MMC.py -- -d='A4:C1:38:1A:59:62' -c=0 -2p -p2=75 -o2 -4 -p1=33 -o1 -6 -b=1000 -r --debounce --skipidentical=50 --name='Office' --callback='sendToInflux2.sh'",
      "args": [""],
      "wait_ready": true,
      "autorestart": true,
      "max_restarts": 5,
      "interpreter": "/usr/bin/python3",
    }
  ]
};
