module.exports = {
  apps: [
    {
      "name": "MiTemperature2Office",
      "script": "/home/pi/projekty/MiTemperature2/LYWSD03MMC.py",
      "args": ["-d 'A4:C1:38:1A:59:62' -2p -p2 75 -p1 33 --skipidentical '50' --name 'MiOffice' --callback sendToInflux2.sh", "-o2", "-4", "-o1", "-6", "-r", "--debounce"],
      "wait_ready": true,
      "autorestart": true,
      "max_restarts": 5,
      "interpreter": "/usr/bin/python3",
    }
  ],

  deploy: {
    production: {
      user: 'SSH_USERNAME',
      host: 'SSH_HOSTMACHINE',
      ref: 'origin/master',
      repo: 'GIT_REPOSITORY',
      path: 'DESTINATION_PATH',
      'pre-deploy-local': '',
      'post-deploy': 'npm install && pm2 reload ecosystem.config.js --env production',
      'pre-setup': ''
    }
  }
};
