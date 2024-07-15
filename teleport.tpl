#!/bin/bash

DOMAIN_NAME=${domain_name}
CERT_FILE_PATH="/etc/letsencrypt/live/$DOMAIN_NAME/fullchain.pem"
KEY_FILE_PATH=/etc/letsencrypt/live/$DOMAIN_NAME/privkey.pem
TELEPORT_PUBLIC_ADDR=$DOMAIN_NAME:443
TELEPORT_CLUSTER_NAME=${cluster_name}
EMAIL_ADDRESS=${email}


export TELEPORT_EDITION="oss"
export TELEPORT_VERSION=${teleport_version}
sudo curl https://goteleport.com/static/install.sh | bash -s $TELEPORT_VERSION $TELEPORT_EDITION

sudo apt install certbot -y

sudo certbot certonly --standalone -d $DOMAIN_NAME -m $EMAIL_ADDRESS --agree-tos --no-eff-email

sudo teleport configure -o /etc/teleport.yaml --cluster-name=$TELEPORT_CLUSTER_NAME --public-addr=$TELEPORT_PUBLIC_ADDR --cert-file=$CERT_FILE_PATH --key-file=$KEY_FILE_PATH
sudo systemctl enable --now teleport




