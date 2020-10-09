FROM ruby:2.6.5
WORKDIR /today_code
RUN apt-get update 
    && apt-get install -y --no-install-recommends nodejs mariadb-client build-essential
    && apt-get clean
    && rm -rf /var/lib/apt/lists/*
COPY Gemfile /today_code/Gemfile
COPY Gemfile.lock /today_code/Gemfile.lock
RUN gem install bundler
RUN bundle install
COPY . /today_code