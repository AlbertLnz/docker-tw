# Usa la imagen oficial de Ubuntu como base
FROM ubuntu:22.04

# Etiqueta de mantenedor
LABEL maintainer="tu-email@ejemplo.com"

# Configura el contenedor para que no se ejecute en modo interactivo
ENV DEBIAN_FRONTEND=noninteractive

# Actualiza los paquetes, instala Python, pip, ffmpeg y yt-dlp
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y python3 python3-pip ffmpeg && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    pip3 install --upgrade pip && \
    pip3 install yt-dlp

# Define el comando que se ejecutará por defecto
CMD [ "bash" ]
