FROM centos:centos6.6

MAINTAINER Kyle Zhang <zhangguangtong@edanzgroup.com>

RUN yum install -y python-setuptools m2crypto
RUN easy_install pip
RUN pip install shadowsocks

ENTRYPOINT ["/usr/bin/ssserver"]
