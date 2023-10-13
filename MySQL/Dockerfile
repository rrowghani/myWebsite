FROM mysql:8-oracle
LABEL authors="rezar"
ENV MYSQL_ROOT_PASSWORD=Pkcntz03!03!
ENV MYSQL_DATABASE=MyWebsite
ENV MYSQL_STARTINGDATA=MyWebsite_backup.sql
RUN echo "Root password is $MYSQL_ROOT_PASSWORD and default database is $MYSQL_DATABASE"
ADD $MYSQL_STARTINGDATA /docker-entrypoint-initdb.d
CMD ["mysqld"]