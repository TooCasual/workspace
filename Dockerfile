FROM ubuntu:18.04

MAINTAINER Youtakunn

RUN apt-get update

RUN apt-get install -y wget curl apt-utils git net-tools inetutils-ping neovim zsh openssh-server
RUN apt-get install -y neofetch

COPY --from=homebrew/ubuntu18.04 /home/linuxbrew /home/linuxbrew
