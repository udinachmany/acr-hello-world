FROM node:9-slim

COPY . /src
RUN cd /src && npm --loglevel=error install
EXPOSE 80
CMD ["node", "/src/server.js"]
