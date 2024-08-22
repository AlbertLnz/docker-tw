# Usa la imagen oficial de Ubuntu como base
FROM ubuntu:latest

# Etiqueta de mantenedor
LABEL maintainer="tu-email@ejemplo.com"

# Actualiza los paquetes e instala cualquier dependencia básica (opcional)
RUN apt-get update && apt-get upgrade -y

# Configura el contenedor para que no se ejecute en modo interactivo
ENV DEBIAN_FRONTEND=noninteractive

# Define el comando que se ejecutará por defecto
CMD [ "bash" ]
