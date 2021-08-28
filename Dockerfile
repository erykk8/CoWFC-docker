FROM ubuntu:16.04

RUN mkdir /var/www \
  && cd /var/www \
  && wget https://raw.githubusercontent.com/EnergyCube/cowfc_installer/master/cowfc.sh \
  && chmod +x cowfc.sh \
  && ./cowfc.sh

# consider running the container in host network mode
EXPOSE 53 80 443 8000 9000 9002 9003 9998 27500 27900 27901 28910 29900 29901 29920
EXPOSE 2-65535/udp

VOLUME ["/var/www"]

WORKDIR /var/www

ENTRYPOINT ["cowfc.sh"]
