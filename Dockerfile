FROM centos:7

USER root
RUN yum install -y iperf3 && yum update -y && yum clean all

USER 1001

EXPOSE 5201
CMD ["iperf3","-s","-i","2"]
