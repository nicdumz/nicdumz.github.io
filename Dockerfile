FROM alpine:latest AS builder

# Install python, npm
RUN apk add --update \
    build-base \
    git \
    npm \
    python3 \
    python3-dev \
    py-pip \
  && rm -rf /var/cache/apk/*
RUN pip3 install setuptools wheel

# Globally install sass from NPM
RUN npm install --unsafe-perm -g sass

COPY . /tmp/
# Install blogofile etc
RUN pip3 install /tmp/_python

# Build everything
RUN make -C /tmp/

FROM nginx:stable-alpine
COPY --from=builder /tmp/_site /usr/share/nginx/html

# The CMD will be the one from the nginx base image.
