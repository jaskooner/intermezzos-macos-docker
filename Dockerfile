# todo: still to be tested

FROM rust:1.22

WORKDIR /app

RUN apt-get update && apt-get upgrade && apt-get install -y
RUN apt-get install grub nasm xorriso qemu build-essential
RUN rustup update
RUN rustup install nightly
RUN rustup default nightly

CMD ["/bin/bash"]


