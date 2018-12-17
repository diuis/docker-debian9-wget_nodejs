FROM diuis/docker-debian9-wget:v1.0.0

ARG NODEJS_ARCHIVE=https://nodejs.org/dist/v10.14.2/node-v10.14.2-linux-x64.tar.gz

RUN mkdir /usr/local/lib/nodejs && \
    wget -nv ${NODEJS_ARCHIVE} -O /usr/local/lib/nodejs/node.tar.gz && \
    tar xf /usr/local/lib/nodejs/node.tar.gz -C /usr/local/lib/nodejs --strip-components 1 && \
    rm /usr/local/lib/nodejs/node.tar.gz && \
    echo "export PATH=/usr/local/lib/nodejs/bin:$PATH" >> /etc/profile.d/nodejs-export-path.sh

# RUN apt-get update && \
#     wget --quiet -O - https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add - && \
#     echo "deb https://deb.nodesource.com/node_10.x stretch main" | tee /etc/apt/sources.list.d/nodesource.list && \
#     echo "deb-src https://deb.nodesource.com/node_10.x stretch main" | tee -a /etc/apt/sources.list.d/nodesource.list && \
#     apt-get update && \
#     apt-get install --no-install-recommends -y nodejs libpython2.7-minimal- python-minimal- python2.7-minimal- && \
#     apt-get autoremove && apt-get clean
