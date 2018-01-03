# todo: still to be tested

FROM rust:1.22.1

WORKDIR /app

RUN apt-get update && apt-get install -y
RUN rustup update
RUN rustup install nightly
RUN rustup default nightly

CMD ["/bin/bash"]


