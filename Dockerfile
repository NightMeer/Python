FROM python:3.11.2

ENV FILENAME=main.py
ENV PACKAGES=""
ENV ADDITIONAL_COMMAND=""

VOLUME ["/src"]

WORKDIR /src

RUN mkdir /temp
COPY startup.sh /temp/startup.sh
RUN chmod 777 /temp/startup.sh

CMD ["/temp/startup.sh"]
