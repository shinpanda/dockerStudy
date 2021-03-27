FROM centos:8
MAINTAINER ds
LABEL "purpos"="TEST"
RUN yum install httpd -d
ADD test.html /var/www/html
WORKDIR /var/www/html
RUN ["/bin/bash", "-c", "echo hello >> test.html"]
EXPOSE 80
CMD apachectl -DFOREGROUND
