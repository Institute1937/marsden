FROM clojure:lein-2.7.1-alpine

ADD . /src
WORKDIR /src
RUN /usr/local/bin/lein deps

CMD ["lein", "run"]
