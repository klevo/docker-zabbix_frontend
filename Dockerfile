FROM dockerfile/ubuntu

# https://www.zabbix.com/documentation/2.4/manual/installation/install
RUN wget -O zabbix-2.4.2.tar.gz http://sourceforge.net/projects/zabbix/files/ZABBIX%20Latest%20Stable/2.4.2/zabbix-2.4.2.tar.gz/download
RUN tar -zxvf zabbix-2.4.2.tar.gz && \
  mv zabbix-2.4.2/frontends/php /srv/zabbix && \
  ls -la /srv/zabbix

CMD ["echo", "TODO: cmd"]