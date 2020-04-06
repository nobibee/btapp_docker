from centos:centos7

RUN yum install wget -y

USER 0

EXPOSE 8888 80 443 22 888 8080 20 21

ADD bt.sh /bt.sh

RUN chmod +x /bt.sh
ENTRYPOINT ["/bt.sh"]
