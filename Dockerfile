FROM erlang:21-slim
RUN mkdir /app
COPY _build/prod/rel/foo/foo-0.2.tar.gz /app
RUN cd /app && tar zxvf foo-0.2.tar.gz

WORKDIR /app
CMD ./bin/foo foreground
