# Imagen base con PHP y Apache
FROM php:7.4-apache

# instalar extención mysql y luego habilita la extención
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# Copiar el código fuente de la aplicación al directorio del servidor web
COPY ./ /var/www/html

# Actualizar permisos en el directorio del servidor web
RUN chown -R www-data:www-data /var/www/html

