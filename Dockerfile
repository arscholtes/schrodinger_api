# Use an official Ruby runtime as a parent image
FROM ruby:3.2.2

# Install dependencies
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

# Set the working directory in the container
WORKDIR /schrodinger_api

# Copy the Gemfile and Gemfile.lock into the container at /myapp
COPY Gemfile /Gemfile
COPY Gemfile.lock /Gemfile.lock

# Install bundler version specified in your Gemfile.lock
RUN gem install bundler:2.4.18

# Install any needed gems
RUN bundle install

# Copy the rest of your application's code
COPY . /schrodinger_api

# ... rest of your Dockerfile ...
