FROM centos
LABEL Description="AWS EKS CLUSTER WITH TERRAFORM" maintainer="Henrique Xavier Sulimann" version="0.1"
RUN dnf update -y\
    && dnf install -y httpd \
    && dnf clean all
ADD ./vhost/site.conf /etc/httpd/conf.d/site.conf
ADD ./html/index.html /var/html/index.html
WORKDIR /var/www/html
VOLUME /dados/
ENTRYPOINT ["/usr/sbin/httpd"]
EXPOSE 8888
CMD ["-D", "FOREGROUND"]