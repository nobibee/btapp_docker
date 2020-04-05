from centos:centos7

RUM yum install wget -y

USER 0

ADD bt.sh /bt.sh

RUN chmod +x /bt.sh

ENTRYPOINT ["/bt.sh"]

CMD ["--wait"]
