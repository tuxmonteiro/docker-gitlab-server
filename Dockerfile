FROM tuxmonteiro/centos6-dev

MAINTAINER marcelotmonteiro@nospam.com

WORKDIR /root

USER root

ENV PKG "mysql56u-server redis"

RUN echo "Starting..."; \
  yum check-update -y; \
  yum install -y ${PKG}; \
  /etc/init.d/mysqld start; \
  /etc/init.d/redis start; \
  echo "Finished."
