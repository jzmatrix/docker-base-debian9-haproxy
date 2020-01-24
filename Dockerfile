FROM debian:9
################################################################################
RUN apt-get update && \
    apt-get -y upgrade && \
    export DEBIAN_FRONTEND=noninteractive && \
    apt-get -y install vim net-tools git haproxy curl openssl git tzdata socat tzdata openssh-server  && \
    /bin/rm -f /etc/localtime && \
    cp /usr/share/zoneinfo/America/New_York /etc/localtime && \
    echo "America/New_York" > /etc/timezone && \
    git clone https://github.com/flores/haproxyctl.git /opt/haproxyctl && \
    apt-get autoremove && \
    apt-get clean && \
    apt-get autoclean && \
    rm -rf /var/lib/apt/lists/*
################################################################################
ADD config/haproxy/haproxy.cfg /etc/haproxy/haproxy.cfg
################################################################################
CMD [ "/usr/sbin/haproxy -f /etc/haproxy/haproxy.cfg" ]
