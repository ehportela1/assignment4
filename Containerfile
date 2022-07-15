FROM fedora:latest
RUN dnf -y update \
	&& dnf -y install vim tuxpaint httpd
EXPOSE 80
ADD my-info.html /var/www/html/
ENTRYPOINT /usr/sbin/httpd -DFOREGROUND
