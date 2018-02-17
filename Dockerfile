FROM oraclelinux:7-slim
RUN yum-config-manager --enable ol7_x86_64_latest
RUN yum install -y httpd httpd && yum clean all
COPY index.html /var/www/html/
ADD  start_httpd.sh /start_httpd.sh
RUN chmod -v +x start_httpd.sh
EXPOSE 80
CMD ["/start.sh"]
