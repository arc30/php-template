FROM php:7.0-apache
COPY src/ /var/www/html/
CMD a2dismod mpm_event; apache2-foreground
