FROM php:8.1.18-apache

RUN chmod -R 774 /var/www/html
RUN chown -R www-data:www-data /var/www/html 

RUN docker-php-ext-install mysqli
ENV DB_HOST=db
ENV DB_USER=root
ENV DB_PASSWORD=ikanasin
ENV DB_NAME=redlock

COPY index.php /var/www/html