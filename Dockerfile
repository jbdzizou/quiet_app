FROM ruby:2.6.5
RUN apt-get update -qq && \
    apt-get install -y build-essential \ 
    libpq-dev \        
    nodejs   
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

# install yarn
# https://yarnpkg.com/en/docs/install#linux-tab
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update
RUN apt-get install -y yarn


RUN gem install bundler --no-document
RUN bundle config build.nokogiri --use-system-libraries
RUN bundle config --local build.sassc --disable-march-tune-native
RUN bundle config set without 'development test'

# bundle install
RUN bundle install

# yarn install
RUN yarn install

# assets precompile
RUN RAILS_ENV=production bundle exec rails assets:precompile

RUN apt-get clean
COPY . /app

# コンテナが起動するたびに実行されるスクリプトを実行
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# メインプロセス開始.
CMD ["rails", "server", "-b", "0.0.0.0"]
