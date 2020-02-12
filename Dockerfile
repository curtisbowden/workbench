# Base
FROM debian:stable
MAINTAINER Curtis Bowden

# Add contrib and non-free repositories to /etc/apt/sources.list

RUN sed -i "s#deb http://deb.debian.org/debian stable main#deb http://deb.debian.org/debian stable main contrib non-free#g" /etc/apt/sources.list
RUN sed -i "s#deb http://security.debian.org/debian-security stable/updates main#deb http://security.debian.org/debian-security stable/updates main contrib non-free#g" /etc/apt/sources.list
RUN sed -i "s#deb http://deb.debian.org/debian stable-updates main#deb http://deb.debian.org/debian stable-updates main contrib non-free#g" /etc/apt/sources.list

# Update apt and install dirmngr for gpg keys

RUN apt-get -yqq update
RUN apt-get -yqq install dirmngr

# Add latest ansible repository

RUN echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" >> /etc/apt/sources.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367

# Install tools

RUN apt-get -yqq update
RUN apt-get -yqq install ansible
RUN apt-get -yqq install cifs-utils
RUN apt-get -yqq install curl
RUN apt-get -yqq install dnsutils
RUN apt-get -yqq install git
RUN apt-get -yqq install iperf3
RUN apt-get -yqq install iputils-arping
RUN apt-get -yqq install iputils-tracepath
RUN apt-get -yqq install ldap-utils
RUN apt-get -yqq install man
RUN apt-get -yqq install minicom
RUN apt-get -yqq install net-tools
RUN apt-get -yqq install netcat
RUN apt-get -yqq install nmap
RUN apt-get -yqq install mtr
RUN apt-get -yqq install python3
RUN apt-get -yqq install python-pip
RUN apt-get -yqq install snmp
RUN apt-get -yqq install snmp-mibs-downloader
RUN apt-get -yqq install telnet
RUN apt-get -yqq install tftp
RUN apt-get -yqq install traceroute
RUN apt-get -yqq install vim
RUN apt-get -yqq install whois
RUN apt-get -yqq install wget

RUN pip install openpyxl

# Customize bash prompt
RUN rm /root/.bashrc
COPY config/.bashrc /root/.bashrc

# Create ~/.ssh folder for ssh keys
RUN mkdir /root/.ssh

# Customize vim
COPY vimconfig/.vimrc-plugins /root/.vimrc
RUN mkdir /root/.vim
RUN ln -s /root/.vim /root/.vimfiles
RUN curl -fLo /root/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
RUN git clone https://github.com/VundleVim/Vundle.vim.git /root/.vim/bundle/Vundle.vim

RUN vim +PlugInstall +qall
RUN vim +PluginInstall +qall
COPY vimconfig/.vimrc /root/.vimrc
