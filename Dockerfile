FROM ubuntu:22.04

RUN mkdir -p /markdown-data
RUN mkdir -p /markdown-data/html
RUN mkdir -p /converter-utils

COPY ./pandoc /converter-utils/
COPY ./converter.sh /converter-utils/

RUN chmod +x /converter-utils/pandoc
RUN chmod +x /converter-utils/converter.sh

ENTRYPOINT ["/converter-utils/converter.sh"]

