FROM httpd:2.4.46
LABEL obligatorio isc 2020
CMD ["bash"]
COPY simple-ecomme /var/www/html/
VOLUME [/var/www/html/]
EXPOSE 80
#CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
CMD ["httpd-foreground"]
