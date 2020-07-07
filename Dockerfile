FROM centos:latest
RUN yum install net-tools \
    ncurses \
    vim \
    php \
    httpd -y
COPY index.html /var/www/html/
CMD /usr/sbin/httpd -DFOREGROUND && /bin/bash
EXPOSE 80

