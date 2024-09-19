# Descargar la imagen de Ubuntu
FROM ubuntu:22.04

# Actualizar la lista de actualizaciones y paquetes
RUN apt-get update --fix-missing && apt-get upgrade -y

# Instalar Apache2 y PHP
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y php && apt-get clean
# Actulaizar la imagen
RUN apt-get upgrade -y

# Copiar la carpeta de la aplicación a /var/www/html
COPY ./webapp /var/www/html

# Establecer el directorio de trabajo
WORKDIR /var/www/html

# Exponer el puerto 8080 para Apache
EXPOSE 8080

# Iniciar Apache en el inicio del contenedor
CMD ["php", "-S", "0.0.0.0:8080", "-t", "/var/www/html"]


