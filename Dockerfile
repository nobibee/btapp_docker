from centos:centos7

RUN yum install wget -y

USER 0

ADD bt.sh /bt.sh

RUN chmod +x /bt.sh

ENTRYPOINT ["/bt.sh"]

RUN /bin/sh -c "while true; do cat /dev/null > tmpfile; sleep 10; done"
