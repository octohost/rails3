FROM octohost/ruby-2.0

ADD . /srv/www
RUN cd /srv/www; bundle install --deployment --without test development

EXPOSE 3000

CMD cd /srv/www; ./script/rails server