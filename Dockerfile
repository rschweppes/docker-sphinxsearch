FROM ubuntu:14.04

RUN \
    apt-get update \
    && apt-get install -y software-properties-common \
    && add-apt-repository ppa:builds/sphinxsearch-rel22 \
    && apt-get update \
    && apt-get -y install sphinxsearch \
    && apt-get purge -y software-properties-common \
    && apt-get -y autoremove
