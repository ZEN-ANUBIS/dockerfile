FROM quay.io/ayanokojix2306/kojixsophia:latest
RUN git clone https://github.com/ibrahimadams254/BWM-XMD-QUANTUM /anubis/app
RUN chown -R node:node /anubis/app
USER node
WORKDIR /anubis/app
COPY package*.json ./
RUN npm install 
COPY server.js .
CMD ["sh", "-c", "node server.js & npm start"]
