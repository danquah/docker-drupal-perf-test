FROM drupal:7
RUN curl http://files.drush.org/drush.phar -o /usr/bin/drush && chmod a+x /usr/bin/drush

COPY perftest.sh /
VOLUME [/app]
WORKDIR /
CMD [ "/perftest.sh" ]
