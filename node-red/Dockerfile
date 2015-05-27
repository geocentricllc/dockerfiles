# Docker file with NODE-RED https support and user credential settings
#
FROM centos

MAINTAINER geocentricllc

ADD run-node-red.sh /usr/local/bin/run-node-red.sh
RUN yum -y install epel-release && yum -y install openssl && yum -y install nodejs && yum -y install npm && npm install -g node-red && rm -f /lib/node_modules/node-red/settings.js && chmod +x /usr/local/bin/run-node-red.sh
ADD settings.js /tmp/settings.js

EXPOSE 1880

ENV username admin
ENV password password

CMD "/usr/local/bin/run-node-red.sh" ${username} ${password}
