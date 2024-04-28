# Utiliza una imagen de Node.js con una versión compatible
FROM node:16

# Instala Angular CLI
RUN npm install -g @angular/cli@14

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia los archivos de tu proyecto Angular al contenedor
COPY . .

# Instala las dependencias del proyecto
RUN npm install

# Expone el puerto 4200 para acceder al servidor de desarrollo de Angular
EXPOSE 4200

# Comando para ejecutar el servidor de desarrollo de Angular
CMD ["ng", "serve", "--host", "0.0.0.0", "--poll", "2000"]

# COMANDO A EJECUTAR
# docker run -it -p 4200:4200 --name sales-angular -v $(pwd):/app sales-project:0.0.3