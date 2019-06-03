FROM diuis/docker-ubuntu-wget:v1.0.1

ARG NODEJS_ARCHIVE=https://nodejs.org/dist/v10.16.0/node-v10.16.0-linux-x64.tar.gz

RUN mkdir /usr/local/lib/nodejs && \
    wget -nv ${NODEJS_ARCHIVE} -O /usr/local/lib/nodejs/node.tar.gz && \
    tar xf /usr/local/lib/nodejs/node.tar.gz -C /usr/local/lib/nodejs --strip-components 1 && \
    rm /usr/local/lib/nodejs/node.tar.gz && \
    ln -s /usr/local/lib/nodejs/bin/node /usr/local/bin/node
