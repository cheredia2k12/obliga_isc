FROM php:7.2-apache
LABEL obligatorio_isc_2020
COPY simple-ecomme /var/www/html/
EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
