FROM quay.io/ayanokojix2306/kojixsophia:latest
RUN git clone https://github.com/devibraah/BWM-XMD /anubis/app
RUN chown -R node:node /anubis/app
USER node
WORKDIR /anubis/app
COPY package*.json ./
RUN npm install 
COPY server.js .
CMD ["sh", "-c", "node server.js & npm start"]
