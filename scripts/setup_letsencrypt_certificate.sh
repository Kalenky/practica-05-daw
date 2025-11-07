#!/bin/bash
set -ex

#importamos el archivo .env
source .env

# Instalamos snap
snap install core
snap refresh core

#Eliminamos instalaciones previas de cerbot
apt remove cerbot -y

# Instalamos cerbot
snap install --classic cerbot

# Solicitamos el certificado a Let-s Encrypt
cerbot --apace -m  $CERTBOT_EMAIL --agree-tos --no-eff-email -d $CERTBOT_DOMAIN