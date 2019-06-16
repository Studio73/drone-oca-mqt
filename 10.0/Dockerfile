FROM python:2.7

RUN apt-get update \
        && apt-get upgrade -y
RUN apt-get install -y --no-install-recommends postgresql-client expect-dev \
        build-essential libsasl2-dev libldap2-dev libssl-dev git \
        python-dev python-pip python-lxml \
        && rm -rf /var/lib/apt/lists/* \
        && apt-get clean
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y --no-install-recommends nodejs
ENV VERSION "10.0"
ENV TRAVIS_BUILD_DIR "/drone/src"

ARG BUILD_DATE
ARG VCS_REF
LABEL org.label-schema.vendor="Studio73" \
        org.label-schema.url="https://www.studio73.es" \
        org.label-schema.vcs-url="https://github.com/Studio73/drone-oca-mqt" \
        org.label-schema.vcs-ref=$VCS_REF \
        org.label-schema.build-date=$BUILD_DATE