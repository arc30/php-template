FROM php:7.0-apache
COPY src/ /var/www/html/
ENV PORT ${PORT:-8080}
CMD a2dismod mpm_event; sed -i "s/80/$PORT/" /etc/apache2/ports.conf; sed -i "s/80/$PORT/" /etc/apache2/sites-enabled/000-default.conf; apache2-foreground;
