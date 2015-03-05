FROM  openshift/docker-builder:latest

MAINTAINER fabric8.io <fabric8@googlegroups.com>

# set env to prevent bower prompting for permission about statistics
ENV CI=true

RUN yum install -y npm
RUN npm install -g gulp bower
RUN cd /tmp npm install
RUN cd /tmp bower update --allow-root

ADD builder.sh /opt/builder.sh
WORKDIR /opt
CMD bash '/opt/builder.sh';
