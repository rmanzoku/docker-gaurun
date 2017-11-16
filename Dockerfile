FROM alpine:3.6
MAINTAINER rmanzoku <manzoku.ryo@gmail.com>

RUN mkdir /etc/gaurun/
RUN mkdir /etc/gaurun/ios

ADD dist/gaurun/gaurun /usr/local/bin/

ADD conf/ios/cert.pem /etc/gaurun/ios/cert.pem
ADD conf/ios/key.pem /etc/gaurun/ios/key.pem

ADD conf/gaurun.toml /etc/gaurun/

CMD ["/usr/local/bin/gaurun", "-c", "/etc/gaurun/gaurun.toml"]
