# Base
FROM debian:stable
MAINTAINER Curtis Bowden

RUN sed -i "s#deb http://deb.debian.org/debian stable main#deb http://deb.debian.org/debian stable main contrib non-free#g" /etc/apt/sources.list
RUN sed -i "s#deb http://security.debian.org/debian-security stable/updates main#deb http://security.debian.org/debian-security stable/updates main contrib non-free#g" /etc/apt/sources.list
RUN sed -i "s#deb http://deb.debian.org/debian stable-updates main#deb http://deb.debian.org/debian stable-updates main contrib non-free#g" /etc/apt/sources.list

RUN apt-get -yqq update
RUN apt-get -yqq install dirmngr

RUN echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" >> /etc/apt/sources.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367

RUN apt-get -yqq update
RUN apt-get -yqq install ansible
RUN apt-get -yqq install cifs-utils
RUN apt-get -yqq install curl
RUN apt-get -yqq install dnsutils
RUN apt-get -yqq install git
RUN apt-get -yqq install ldap-utils
RUN apt-get -yqq install man
RUN apt-get -yqq install minicom
RUN apt-get -yqq install net-tools
RUN apt-get -yqq install netcat
RUN apt-get -yqq install nmap
RUN apt-get -yqq install mtr
RUN apt-get -yqq install python3
RUN apt-get -yqq install snmp
RUN apt-get -yqq install snmp-mibs-downloader
RUN apt-get -yqq install telnet
RUN apt-get -yqq install vim
RUN apt-get -yqq install whois
RUN apt-get -yqq install wget

