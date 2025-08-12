FROM ghcr.io/railwayapp-templates/postgres-ssl:17
RUN apt update && apt install -y git make
RUN git clone https://github.com/pgmq/pgmq.git
RUN cd pgmq/pgmq-extension && git checkout v1.6.1 && make && make install
