FROM ubuntu

LABEL Melissa Reyes <melrepa7@gmail.com>

WORKDIR /root

RUN apt-get -y update && \
    apt-get install -yq nano curl unzip less pip &&\
    pip install csvkit

ADD covid_script.sh  /

ENTRYPOINT ["/Covid19Script.sh"]
