FROM debian:12-slim

RUN apt-get update \
  && apt-get install \
  -y \
  --no-install-recommends \
  tftpd-hpa \
  rsyslog \
  libcap2-bin

COPY ./tftpd-hpa.conf /etc/default/tftpd-hpa
COPY ./rsyslog.conf /etc/rsyslog.conf

RUN mkdir /tftp

EXPOSE 69


COPY ./entrypoint.sh /usr/local/bin/entrypoint.sh
#RUN setcap 'cap_net_bind_service=+ep' /etc/init.d/tftpd-hpa

ENTRYPOINT ["entrypoint.sh"]

