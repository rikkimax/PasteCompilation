FROM	ubuntu
MAINTAINER Richard Andrew Cattermole <pbdadmin@gmail.com>

RUN apt-get update
RUN apt-get install -y gcc-multilib wget xdg-utils
RUN wget http://downloads.dlang.org/releases/2013/dmd_2.063.2-0_amd64.deb
RUN dpkg -i dmd_2.063.2-0_amd64.deb
RUN apt-get clean
RUN apt-get autoremove
