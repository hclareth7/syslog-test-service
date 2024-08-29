FROM ubuntu:20.04

# Instalar rsyslog
RUN apt-get update && \
    apt-get install -y rsyslog && \
    apt-get clean

# Copiar la configuración de rsyslog
COPY rsyslog.conf /etc/rsyslog.conf

# Exponer el puerto UDP para Syslog
EXPOSE 10514/udp

# Ejecutar rsyslog
CMD ["rsyslogd", "-n"]