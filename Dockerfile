FROM ruby:2.6.5
RUN apt-get update -qq && \
    apt-get install -y build-essential \ 
    libpq-dev \        
    nodejs   
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN gem install bundler --no-document
RUN bundle config build.nokogiri --use-system-libraries
RUN bundle config --local build.sassc --disable-march-tune-native
RUN bundle config set without 'development test'
RUN bundle install
RUN apt-get clean
COPY . /app

# コンテナが起動するたびに実行されるスクリプトを実行
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# メインプロセス開始.
CMD ["rails", "server", "-b", "0.0.0.0"]
