FROM quay.io/ayanokojix2306/kojixsophia:latest
RUN git clone https://github.com/devibraah/BWM-XMD /anubis/app
RUN chown -R node:node /anubis/app
USER node
WORKDIR /anubis/app
COPY server.js .
RUN npm install 
CMD ["npm" , "start" ]
