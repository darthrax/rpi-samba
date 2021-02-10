FROM alpine
MAINTAINER darthrax

RUN apk add --update \
    samba-common-tools \
    samba-client \
    samba-server \
    && rm -rf /var/cache/apk/*

COPY run.sh /run.sh
RUN chmod u+x /run.sh

EXPOSE 445

ENTRYPOINT ["/run.sh"]
CMD ["-h"]
