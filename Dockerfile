FROM debian:jessie-backports

RUN apt-get update && \
     apt-get install -y \
       libpq-dev \
       libxml2-dev \
       libxslt-dev \
       lib32z1-dev \
       python3-dev \
       python-pip \
       git

RUN  cd /opt && \
     git clone https://github.com/jaywink/social-relay.git && \
     cd social-relay && \
     pip install -U pip setuptools && \
     pip install -r requirements/production.txt && \
     pip install -r requirements/postgresql.txt
