FROM alpine:3.6
MAINTAINER rmanzoku <manzoku.ryo@gmail.com>

RUN apk add --no-cache ca-certificates

RUN mkdir /etc/gaurun/
RUN mkdir /etc/gaurun/ios

ADD dist/gaurun/gaurun /usr/local/bin/
ADD dist/gaurun/gaurun_recover /usr/local/bin/

ARG confdir=conf

ADD $confdir/ios/cert.pem /etc/gaurun/ios/cert.pem
ADD $confdir/ios/key.pem /etc/gaurun/ios/key.pem

ADD $confdir/gaurun.toml /etc/gaurun/

CMD ["/usr/local/bin/gaurun", "-c", "/etc/gaurun/gaurun.toml"]
