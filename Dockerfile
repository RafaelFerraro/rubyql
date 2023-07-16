FROM ruby:3.1.1

WORKDIR /usr/src/app

COPY . .

RUN apt-get update && apt-get install -y libpq-dev postgresql-client nodejs

RUN bundle install

EXPOSE 3100

CMD ["rails", "server", "-b", "0.0.0.0", "-p", "3100"]
