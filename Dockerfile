FROM ubuntu:22.04

RUN mkdir -p /markdown-data
RUN mkdir -p /markdown-data/templates
RUN mkdir -p /markdown-data/html
RUN mkdir -p /converter-utils

COPY ./GitHub.html5 /root/.local/share/pandoc/templates/
COPY ./pandoc /converter-utils/
COPY ./converter.sh /converter-utils/

RUN chmod +x /converter-utils/pandoc
RUN chmod +x /converter-utils/converter.sh

CMD ["/converter-utils/converter.sh"]

