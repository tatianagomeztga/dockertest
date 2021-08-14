# PARTIR DE UNA IMAGEN
FROM node:14

# AÑADIR EL PACKAGE
ADD package.json package.lock.json
# INSTALAR DEPENDENCIAS
RUN npm install
# Copiar el codigo
ADD app.json
#EXPOSE
EXPOSE 5000
#CORRER EL CONTENEDOR
#CMD node app.js
#lo manda al proceso que esta corriendo, de la manera de abajo lo corre como un hijo
CMD ['node', 'app.js']