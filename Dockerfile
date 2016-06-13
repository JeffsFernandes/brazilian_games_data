FROM ruby:2.1-onbuild
RUN mkdir /app
COPY app/Gemfile /app/Gemfile
COPY app/Gemfile.lock /app/Gemfile.lock