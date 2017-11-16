FROM alpine:3.6
MAINTAINER rmanzoku <manzoku.ryo@gmail.com>

RUN mkdir /etc/gaurun/
ADD dist/gaurun/gaurun /usr/local/bin/
ADD gaurun.toml /etc/gaurun/

CMD ["/usr/local/bin/gaurun", "-c", "/etc/gaurun/gaurun.toml"]
