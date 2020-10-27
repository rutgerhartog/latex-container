FROM alpine:latest

ENV PLATFORM_TYPE="local"
ENV PLATFORM_LOC="/latex"

COPY cron /usr/local/bin/cron
RUN chmod +x /usr/local/bin/cron

RUN apk add -U texlive-full

USER 1000

CMD ["cron"]
