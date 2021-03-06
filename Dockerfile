FROM ubuntu:16.04
SHELL ["/bin/bash", "-c"]
WORKDIR /app


RUN apt-get update && apt-get install \
  nasm xorriso qemu build-essential curl \
  bsdmainutils grub-pc-bin \
  grub -y && \
  curl https://sh.rustup.rs -sSf > rust.sh && \
  sh rust.sh -y && \
  source ${HOME}/.cargo/env \
  rustup update && \
  rustup install nightly && \
  rustup default nightly && \
  cargo install xargo && \
  rustup component add rust-src 

RUN echo PATH="$HOME/.cargo/bin:$PATH" >> $HOME/.bashrc























