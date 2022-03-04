FROM amazonlinux:latest
#ADD amzn2-container-raw-2.0.20220121.0-x86_64.tar.xz /

RUN yum update -y
RUN yum install -y java-1.8.0-openjdk.x86_64 jq.x86_64
RUN mkdir /springCloud

COPY target/eureka*.jar /springCloud/

CMD ["/bin/bash"]