FROM alpine

ENV PLUGIN_COMPILER pdflatex
ENV PLUGIN_FILENAME main.tex

COPY run.sh /usr/local/bin/run.sh
RUN chmod +x /usr/local/bin/run.sh

RUN apk add -U texlive-full

USER 1000

ENTRYPOINT ["run.sh"]
