FROM node:20.9.0
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . ./
#ENV PORT 5000
EXPOSE $PORT
# Starte Server direkt über node, da Signaleweitergabe von npm nach node gelegentlich zu Errors führen
CMD ["node", "./bin/www"]
