FROM centos:centos6.6

MAINTAINER Kyle Zhang <zhangguangtong@edanzgroup.com>

RUN yum install -y python-setuptools m2crypto
RUN easy_install pip
RUN pip install shadowsocks

ADD startup.sh /startup.sh
RUN chmod a+x /startup.sh

EXPOSE 1080

CMD ["/startup.sh"]
