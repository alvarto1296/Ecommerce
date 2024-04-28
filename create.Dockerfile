#Crea proyeto angular en cualquier version
#Luego se copia al host para luego cambiar la imagen

# Utiliza la imagen oficial de Node.js con la versión 18
FROM node:18

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Instala Angular CLI de forma global
RUN npm install -g @angular/cli@14

# Ejecuta el comando ng new para crear un nuevo proyecto Angular
RUN ng new sales-project --routing=false --style=css --skip-git --skip-tests --skip-install=true

# Cambia al directorio del nuevo proyecto Angular
WORKDIR /app/sales-project

# Instala las dependencias del proyecto
RUN npm install

# Exponer el puerto 4200 para el servidor de desarrollo de Angular
#EXPOSE 4200

# Definir el comando para iniciar el servidor de desarrollo de Angular
#CMD ["ng", "serve", "--host", "0.0.0.0"]

#COMANDO A EJECUTAR
# docker run -it --name sales2 -p 4200:4200 sales-project:0.0.2 sh