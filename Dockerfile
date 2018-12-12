FROM diuis/docker-debian9-wget:v1.0.4

RUN apt-get update && \
    wget --quiet -O - https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add - && \
    echo "deb https://deb.nodesource.com/node_10.x stretch main" | tee /etc/apt/sources.list.d/nodesource.list && \
    echo "deb-src https://deb.nodesource.com/node_10.x stretch main" | tee -a /etc/apt/sources.list.d/nodesource.list && \
    apt-get update && \
    apt-get install --no-install-recommends -y nodejs libpython2.7-minimal- python-minimal- python2.7-minimal- && \
    apt-get autoremove && apt-get clean
