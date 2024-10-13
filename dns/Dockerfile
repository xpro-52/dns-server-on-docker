FROM alpine:3.20
RUN apk add bind openrc
RUN rc-update -u named
RUN mkdir -p /var/log/named
RUN chown named:named /var/log/named
RUN chmod 755 /var/log/named
