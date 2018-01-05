FROM alpine

RUN apk --update add \
  ca-certificates \
  ruby \
  ruby-bundler \
  ruby-dev && \
  rm -fr /usr/share/ri

RUN apk add --no-cache make gcc libc-dev git libffi-dev && \
  rm -fr /usr/share/ri

RUN gem install travis --no-rdoc --no-ri

# Where travis config is stored
ENV TRAVIS_CONFIG_PATH /travis
VOLUME /travis

# Working directory that will be used as the repo volume
VOLUME /repo
WORKDIR /repo

ENTRYPOINT ["/usr/bin/travis"]