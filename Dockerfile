FROM php:5.5.21-apache
LABEL obligatorio isc 2020
COPY simple-ecomme /var/www/html/
EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
