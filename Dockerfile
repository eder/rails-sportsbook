FROM ruby:3

RUN apt-get update -qq && apt-get install -y nodejs default-libmysqlclient-dev

WORKDIR /myapp

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . .

EXPOSE 3000:3000
