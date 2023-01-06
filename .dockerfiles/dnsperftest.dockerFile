FROM alpine:latest
RUN apk --no-cache add bash bc bind-tools \
    && mkdir /app \
    && wget https://raw.githubusercontent.com/graysky2/dnsperftest/master/dnstest.sh -O /app/dnstest.sh \
    && chmod +x /app/dnstest.sh

ENTRYPOINT ["/app/dnstest.sh"]
