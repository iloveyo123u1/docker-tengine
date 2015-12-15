FROM ubuntu

RUN apt-get update
RUN apt-get install -y git build-essential libpcre3-dev libssl-dev debhelper curl && \
  apt-get clean

WORKDIR /root
RUN git clone https://github.com/alibaba/tengine.git
WORKDIR /root/tengine
RUN mv packages/debian . && DEB_BUILD_OPTIONS=nocheck dpkg-buildpackage -uc -b
WORKDIR /root
RUN dpkg -i tengine*.deb

EXPOSE 80 443

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
