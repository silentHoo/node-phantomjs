FROM wernight/phantomjs:2.1.1

USER root

RUN apt-get update && \
    apt-get install -y curl apt-utils git openssl && \
    curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
    apt-get install -y nodejs build-essential

# install bower global
RUN npm install -g bower

# cleanup
RUN apt-get clean && \
    apt-get autoremove
