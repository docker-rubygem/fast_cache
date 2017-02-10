FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.0.1

RUN gem install fast_cache --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["fast-cache-benchmark"]
CMD ["--help"]
