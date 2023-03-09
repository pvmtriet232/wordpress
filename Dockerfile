FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y mariadb-server
EXPOSE 8000

LABEL version="1.0"
LABEL description="MariaDB Server"

HEALTHCHECK --start-period=5m \
  CMD mariadb -e 'SELECT @@datadir;' || exit 1

CMD ["mysqld"]




