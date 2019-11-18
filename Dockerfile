FROM vijaymali/rails-poc

ENV APP_HOME /usr/src/app
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

COPY . $APP_HOME

RUN chmod +x railsserver.sh

RUN bundle install

EXPOSE 3000
#ENV RAILS_ENV=production
#ENV RAKE_ENV=production

RUN yarn install

#RUN rake assets:precompile

#CMD ["bundle", "exec", "rails", "s"]

CMD ["./railsserver.sh"]

