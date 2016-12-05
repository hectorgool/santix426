#docker buil -t santix:0
#docker run --name santix -p 8080:3000 -d --restart=always santix:0
FROM ruby

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        postgresql-client nodejs \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app
COPY Gemfile* ./
RUN bundle install
COPY . .

EXPOSE 3000
CMD ["rails", "s", "Puma", "-b", "0.0.0.0"]