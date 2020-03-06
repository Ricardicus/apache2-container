FROM ubuntu

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get install -y --fix-missing --fix-broken apache2

COPY apache2.conf /etc/apache2/

CMD /usr/sbin/apache2ctl -D FOREGROUND

EXPOSE 80