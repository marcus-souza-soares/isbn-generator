FROM ruby:latest
RUN apt-get update -y && apt-get install sudo -y

COPY  . .

RUN gem install bundler && bundle install
RUN rspec