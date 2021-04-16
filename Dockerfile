FROM arm32v7/ruby:alpine
WORKDIR /app

ADD app.rb /app
ADD Gemfile /app
ADD Gemfile.lock  /app

#RUN bundle update
RUN bundle install --standalone

ENTRYPOINT ["ruby", "app.rb"]