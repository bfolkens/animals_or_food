FROM ruby:2.3-alpine

RUN apk add --update build-base imagemagick && \
    rm -rf /var/cache/apk/*

RUN mkdir -p /app
WORKDIR /app

COPY Gemfile ./
RUN bundle install

COPY . ./

VOLUME [/app/out]

CMD ["./run_example.sh"]
