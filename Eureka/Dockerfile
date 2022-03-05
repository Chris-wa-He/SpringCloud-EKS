#FROM amazonlinux:latest

FROM amazon/aws-cli:latest

RUN yum update -y
RUN yum install -y java-1.8.0-openjdk.x86_64 jq.x86_64
RUN mkdir /springCloud

COPY target/eureka*.jar /springCloud/
COPY src/main/resources/env.sh /springCloud/

RUN chmod +x /springCloud/env.sh

#CMD ["/bin/sh"]
#ENTRYPOINT ["/springCloud/env.sh"]
