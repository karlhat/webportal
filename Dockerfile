#Run httpd
FROM oraclelinux:7-slim
RUN echo "nameserver 192.168.122.1 " >> /etc/resolv.conf
RUN yum-config-manager --enable ol7_x86_64_latest
RUN yum install -y httpd  && yum clean all 
COPY index.html /var/www/html/
ADD  start_httpd.sh /start_httpd.sh
RUN chmod -v +x start_httpd.sh
EXPOSE 80
CMD ["/start_httpd.sh"]
