#!/bin/bash

mkdir /var/run/sshd
chmod 0755 /var/run/sshd

#/usr/sbin/postfix start
#
#/usr/sbin/cron

#################################################
#/usr/bin/git config --global user.email "haproxy@ziemba.net"
#/usr/bin/git config --global user.name "HaProxy User"
#################################################
#mkdir /root/.aws
#cp /root/aws_config/config /root/.aws/config
#cp /root/aws_config/credentials /root/.aws/credentials
#################################################
#mkdir -p /STORAGE/haproxyCFG
#/usr/local/bin/aws s3 sync s3://sitehosting-config/haproxy-config /STORAGE/haproxyCFG
#################################################
mkdir -p /STORAGE/PEM
#/usr/local/bin/aws s3 sync s3://sitehosting-config/haproxy-pem /STORAGE/PEM
#################################################
#mkdir /opt/hapConfig
#/usr/local/bin/aws s3 sync s3://sitehosting-config/haproxy-scripts/hapConfig /opt/hapConfig
#chmod 755 /opt/hapConfig/*
#################################################
#mkdir /opt/sslManager
#/usr/local/bin/aws s3 sync s3://sitehosting-config/haproxy-scripts/sslManager /opt/sslManager
#chmod 755 /opt/sslManager/*
#################################################
# /opt/hapConfig/hapConfig

# /opt/haproxyctl/haproxyctl start

# /opt/sslManager/sslManager

/usr/sbin/sshd -D -p 2222
