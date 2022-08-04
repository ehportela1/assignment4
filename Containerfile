FROM fedora:latest
RUN dnf -y update \
	&& dnf -y install httpd
EXPOSE 80
ADD my-info.html /var/www/html/data/
ENTRYPOINT /usr/sbin/httpd -D FOREGROUND
