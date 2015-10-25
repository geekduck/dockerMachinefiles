FROM ubuntu:14.04
MAINTAINER geekduck

RUN apt-get -yq update && apt-get -yq upgrade

# install
RUN apt-get install -y openssh-server zsh tmux git wget zip unzip curl xterm tree grep emacs24 colordiff golang

RUN mkdir /var/run/sshd
RUN echo 'root:root' |chpasswd

# Add User
RUN adduser --disabled-password --gecos "" duck1218 \
  && echo "duck1218 ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers \
  && echo 'duck1218:duck1218' | chpasswd

RUN chsh -s /bin/zsh duck1218

# Setup
USER duck1218
WORKDIR /home/duck1218
ENV HOME /home/duck1218
RUN git clone https://github.com/geekduck/dotfiles.git ~/.dotfiles
RUN cd ~/.dotfiles && ./setup-only-http.sh

USER root
EXPOSE 22
CMD /usr/sbin/sshd -D
