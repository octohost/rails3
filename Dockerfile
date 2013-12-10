FROM octohost/ruby-2.0.0p353

RUN apt-get update
RUN apt-get install -y libsqlite3-ruby1.9.1 libsqlite3-dev
ADD . /srv/www
RUN cd /srv/www; bundle install

EXPOSE 3000

CMD cd /srv/www; ./script/rails server