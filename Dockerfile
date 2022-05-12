FROM alpine

RUN apk update \
    && apk add lighttpd \
    && rm -rf /var/cache/apk/*

COPY lighttpd.conf /etc/lighttpd/lighttpd.conf
COPY webroot/* /var/www/localhost/htdocs/

EXPOSE 8080

CMD ["lighttpd","-D","-f","/etc/lighttpd/lighttpd.conf"]

