FROM fedora:latest
RUN dnf -y update \
	&& dnf -y install httpd
EXPOSE 80
ADD my-info.html /var/www/html/data
VOLUME --mount source=data.vol,destination=/var/www/html/data --name mydata_container fedora ls -ld /var/www/html/data
ENTRYPOINT /usr/sbin/httpd -DFOREGROUND
