# Docker file with NODE-RED https support
#
FROM centos

MAINTAINER geocentricllc

ADD run-node-red.sh /usr/local/bin/run-node-red.sh

RUN yum -y install epel-release && yum -y install openssl && yum -y install supervisor && yum -y install nodejs && yum -y install npm && npm install -g node-red && chmod +x /usr/local/bin/run-node-red.sh

ADD settings.js /lib/node_modules/node-red/settings.js

RUN mkdir -p /var/run/node-red && mkdir -p /var/log/supervisor
COPY supervisord.conf /etc/supervisord.d/supervisord.conf

EXPOSE 1880

CMD /usr/bin/supervisord -c /etc/supervisord.d/supervisord.conf
