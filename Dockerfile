from centos:centos7

RUN yum install wget -y

USER 0

ADD bt.sh /bt.sh

RUN chmod +x /bt.sh

CMD ["/bt.sh"]
