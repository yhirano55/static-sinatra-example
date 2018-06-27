FROM ruby:2.5.1-alpine
ENV LANG="ja_JP.UTF-8" \
    APP_PATH="/static-sinatra-example"
RUN apk --update --no-cache add build-base \
                                linux-headers \
                                git \
                                cmake \
                                less \
                                tzdata
WORKDIR $APP_PATH
ADD Gemfile* ./
RUN bundle install --jobs=4
COPY . $APP_PATH
EXPOSE 3000
CMD ["rackup", "-o", "0.0.0.0", "-p", "3000"]
