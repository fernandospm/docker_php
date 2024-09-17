# Descargar la imagen de Ubuntu
FROM ubuntu:22.04

# Actualizar la lista de actualizaciones y paquetes
RUN apt-get update --fix-missing && apt-get upgrade -y

# Instalar Apache2 y PHP
RUN apt-get update && apt-get install -y \
    php-fpm \
    apache2 \
    libapache2-mod-php

# Actulaizar la imagen
RUN apt-get upgrade -y

# Copiar la carpeta de la aplicación a /var/www/html
COPY ./webapp /var/www/html

# Establecer el directorio de trabajo
WORKDIR /var/www/html

# Exponer el puerto 8080 para Apache
EXPOSE 8080

# Cambiar el puerto de Apache al 8080
RUN sed -i 's/80/8080/g' /etc/apache2/ports.conf /etc/apache2/sites-available/000-default.conf

# Iniciar Apache en el inicio del contenedor
CMD ["apachectl", "-D", "FOREGROUND"]


