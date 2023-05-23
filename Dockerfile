
FROM ruby:2.7.6

WORKDIR /app 
# /usr/src/app

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt update
RUN apt install libpq-dev -y
RUN apt install libjemalloc-dev -y
RUN apt install libvips42 -y
RUN apt install yarn -y
COPY Gemfile Gemfile.lock ./
COPY . .
RUN ["bin/setup"]
RUN ["bin/rails houdini:nonprofit:create"]

CMD [ "bin/rails", "server"]
