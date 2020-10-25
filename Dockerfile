FROM ubuntu:20.04

WORKDIR /data/wwwroot/freenom
RUN mkdir -p /data/wwwroot/freenom

RUN chmod 777 /data/wwwroot/freenom

RUN apt -qq update

ENV DEBIAN_FRONTEND=noninteractive

RUN apt -qq install -y git wget php npm \
    python3 python3-pip  bash curl \
    build-essential apache2 php7.4-curl

COPY . /data/wwwroot/freenom

CMD ["bash", "start.sh"]
