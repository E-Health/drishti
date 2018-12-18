FROM alpine:3.3

MAINTAINER Pascal Brandt <pascal@openmrs.org>

ENV MYSQL_ROOT_PASSWORD=root \
    MYSQL_DATABASE=openmrs \
    MYSQL_USER=openmrs \
    MYSQL_PASSWORD=openmrs

COPY run.sh /run.sh

RUN apk add --update mariadb curl; \
    curl -L http://bintray.com/psbrandt/generic/download_file\?file_path\=openmrs-refapp-database-2.3.1.sql.gz \
         -o /tmp/openmrs-refapp-database-2.3.1.sql.gz; \
    chmod +x /run.sh; \
    apk del curl && rm -f /var/cache/apk/*


EXPOSE 3306

CMD ["/run.sh"]
