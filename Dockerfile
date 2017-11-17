FROM alpine:3.6
LABEL maintainer="rmanzoku <manzoku.ryo@gmail.com>"

RUN mkdir -p /var/app/current
WORKDIR /var/app/current

RUN apk add --no-cache ca-certificates

RUN mkdir bin

ADD dist/gaurun/gaurun bin/gaurun
ADD dist/gaurun/gaurun_recover bin/gaurun_recover

ADD conf ./conf

ENV CONF_PREFIX=conf/
CMD ["sh", "-c", "bin/gaurun -c ${CONF_PREFIX}gaurun.toml"]
