FROM ubuntu

LABEL Melissa Reyes <melrepa7@gmail.com>

WORKDIR /root

RUN apt-get -y update && \
    apt-get install -yq curl unzip less vim nano git pip tldr &&\
    pip install csvkit 

ADD covidscript.sh  /

ENTRYPOINT ["/covidscript.sh"]
