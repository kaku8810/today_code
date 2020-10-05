FROM ruby:2.6.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /today_code
WORKDIR /today_code
COPY Gemfile /today_code/Gemfile
COPY Gemfile.lock /today_code/Gemfile.lock
RUN gem install bundler
RUN bundle install
COPY . /today_code