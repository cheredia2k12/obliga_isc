FROM php:7.2-apache
LABEL obligatorio isc 2020
COPY code-ecomme /var/www/html/
EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
