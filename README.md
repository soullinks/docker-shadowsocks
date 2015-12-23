#Docker-shadowsocks

This Dockerfile builds an image with the Python implementation of shadowsocks. Based on Centos 6.6 image.

#Quick Start

This image uses CMD run a script to start the service.

> docker run -d -p <local_port>:1080 -e PASSWORD=yourpass zhangguangtong/docker-shadowsocks

Using a different encrypt method.

> docker run -d -p <local_port>:1080 -e PASSWORD=yourpass -e METHOD=rc4-md5 zhangguangtong/docker-shadowsocks

#Environment varibles

## WORKERS

Shadowsocks workers number. Default: 1

## FORBIDDEN_IP

Shadowsocks forbidden-ip. Default: null

## FAST_OPEN

Enable tcp_fast_open. Default: False
