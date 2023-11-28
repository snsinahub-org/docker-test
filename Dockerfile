FROM centos:7

RUN whoami

RUN yum install -y httpd



EXPOSE 80:80

ENTRYPOINT [ "/usr/sbin/init" ]
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]