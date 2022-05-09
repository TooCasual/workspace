FROM ubuntu:18.04

MAINTAINER Youtakunn

USER root

WORKDIR /root

RUN apt-get update \
 && apt-get install -y --no-install-recommends software-properties-common gnupg-agent \
 && add-apt-repository -y ppa:git-core/ppa \
 && add-apt-repository -y ppa:neovim-ppa/stable \
 && apt-get update \
 && apt-get install -y --no-install-recommends \
  ca-certificates \
  curl \
  wget \
  apt-utils \
  netbase \
  net-tools \
  inetutils-ping \
  openssh-client \
  openssh-server \
  bzip2 \
  unzip \
  g++ \
  gawk \
  git \
  less \
  libz-dev \
  locales \
  make \
  patch \
  sudo \
  uuid-runtime \
  tzdata \
  neofetch \
  ncdu \
  zsh \
  neovim \
  tmux 

RUN apt-get remove --purge -y software-properties-common \
  && apt-get autoremove --purge -y \
  && rm -rf /var/lib/apt/lists/*

RUN chsh -s /usr/bin/zsh
