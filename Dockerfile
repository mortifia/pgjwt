FROM postgres:12
RUN apt-get update && apt-get install -y make git postgresql-server-dev-12 postgresql-12-pgtap && rm -rf /var/lib/apt/lists/*
RUN mkdir "/pgjwt"
WORKDIR "/pgjwt"
COPY . .
RUN make && make install

