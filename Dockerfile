FROM bluechipfinancial/ruby-2.1.1

ENV BUNDLE_CONSOLE pry

ENV app /usr/src/app
WORKDIR $app
ADD . $app

RUN bundle install

CMD bundle console
