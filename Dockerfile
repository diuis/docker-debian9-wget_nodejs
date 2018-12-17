FROM diuis/docker-debian9-wget:v1.0.0

RUN mkdir /usr/local/lib/nodejs && \
    wget -nv https://nodejs.org/dist/v10.14.2/node-v10.14.2-linux-x64.tar.gz -O /usr/local/lib/nodejs/node-v10.14.2-linux-x64.tar.gz && \
    tar xf /usr/local/lib/nodejs/node-v10.14.2-linux-x64.tar.gz -C /usr/local/lib/nodejs && \
    rm /usr/local/lib/nodejs/node-v10.14.2-linux-x64.tar.gz && \
    mv /usr/local/lib/nodejs/node-v10.14.2-linux-x64 /usr/local/lib/nodejs/node-10.14.2 && \
    ln -s /usr/local/lib/nodejs/node-10.14.2 /usr/local/lib/nodejs/node

# RUN apt-get update && \
#     wget --quiet -O - https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add - && \
#     echo "deb https://deb.nodesource.com/node_10.x stretch main" | tee /etc/apt/sources.list.d/nodesource.list && \
#     echo "deb-src https://deb.nodesource.com/node_10.x stretch main" | tee -a /etc/apt/sources.list.d/nodesource.list && \
#     apt-get update && \
#     apt-get install --no-install-recommends -y nodejs libpython2.7-minimal- python-minimal- python2.7-minimal- && \
#     apt-get autoremove && apt-get clean
