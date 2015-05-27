#!/bin/bash
cd /usr/lib/node_modules/node-red
userpw=`node -e "console.log(require('bcryptjs').hashSync(process.argv[1], 8));" $2`
cat /tmp/settings.js | sed "s/admin-user/$1/" | sed "s/admin-password/$userpw/" > /lib/node_modules/node-red/settings.js
mkdir -p /opt/certs
cd /opt/certs
openssl genrsa -out privatekey.pem 2048
openssl req -new -key privatekey.pem -out private-csr.pem -subj "/C=NN/ST=NN/L=NN/O=NN/OU=NN/CN=NN"
openssl x509 -req -days 365 -in private-csr.pem -signkey privatekey.pem -out certificate.pem
/bin/node-red
