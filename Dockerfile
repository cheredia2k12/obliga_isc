FROM php:7.2-apache
LABEL obligatorio isc 2020
CMD ["bash"]
COPY simple-ecomme /var/www/html/
VOLUME [/var/www/html]
WORKDIR /var/www/html
EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
