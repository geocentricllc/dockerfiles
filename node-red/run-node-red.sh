#!/bin/bash
cat /tmp/settings-tmpl.js | sed s~__USERNAME__~"$username"~g | sed s~__PASSWORD__~"$password"~g > /tmp/settings.js
mkdir -p /opt/certs
cd /opt/certs
openssl genrsa -out privatekey.pem 2048 > /dev/null 2>&1
openssl req -new -key privatekey.pem -out private-csr.pem -subj "/C=NN/ST=NN/L=NN/O=NN/OU=NN/CN=NN"
openssl x509 -req -days 365 -in private-csr.pem -signkey privatekey.pem -out certificate.pem > /dev/null 2>&1
/bin/node-red --settings /tmp/settings.js
