FROM python:3.13.2

ENV FILENAME=main.py
ENV PACKAGES=""
ENV ADDITIONAL_COMMAND=""

ARG SOFTWARENAME_VER="1.0.0"

LABEL base.image="python:3.13.2"
LABEL dockerfile.version="1"
LABEL software="Python"
LABEL software.version="${SOFTWARENAME_VER}"
LABEL description="Python Docker"
LABEL website="https://github.com/NightMeer/Python"
LABEL license=""
LABEL maintainer="NightMeer"
LABEL maintainer.email="git@nightmeer.de"
#Github Related
LABEL org.opencontainers.image.source="https://github.com/NightMeer/Python" 

VOLUME ["/src"]

WORKDIR /src

COPY startup.sh /startup.sh
RUN chmod 777 /startup.sh

ENTRYPOINT ["/bin/sh"]
CMD ["-c","/startup.sh"]
