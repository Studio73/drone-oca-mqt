FROM python:2.7-slim-stretch

RUN apt-get update \
        && apt-get upgrade -y
RUN mkdir -p /usr/share/man/man1
RUN mkdir -p /usr/share/man/man7
RUN apt-get install -y --no-install-recommends curl wget postgresql-client \
        git tcl gcc bzip2 expect-dev python-lxml libxmlsec1-dev pkg-config \
        libxml2-dev libxslt-dev zlib1g-dev \
        && rm -rf /var/lib/apt/lists/* \
        && apt-get clean
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y --no-install-recommends nodejs
ENV VERSION "10.0"
ENV TRAVIS_BUILD_DIR "/drone/src"

LABEL maintainer="Studio73" \
        org.label-schema.vendor="Studio73" \
        org.label-schema.url="https://www.studio73.es" \
        org.label-schema.vcs-url="https://github.com/Studio73/drone-oca-mqt"