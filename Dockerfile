FROM dockerfile/ubuntu

# https://www.zabbix.com/documentation/2.4/manual/installation/install
RUN wget -O zabbix-2.4.2.tar.gz http://sourceforge.net/projects/zabbix/files/ZABBIX%20Latest%20Stable/2.4.2/zabbix-2.4.2.tar.gz/download
RUN tar -zxvf zabbix-2.4.2.tar.gz && \
  mv zabbix-2.4.2/frontends/php /srv/zabbix && \
  # ls -la /srv/zabbix && \
  apt-get update && \
  apt-get install -y php5-mysql php5-fpm php5-gd

# php-fpm port
EXPOSE 9000

# location of our frontend php files
VOLUME ["/srv/zabbix"]

CMD ["/usr/sbin/php5-fpm", "--nodaemonize", "--fpm-config /etc/php5/fpm/php-fpm.conf"]