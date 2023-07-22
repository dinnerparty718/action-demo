FROM node:12-alpine
WORKDIR /app
RUN npm install

COPY entrypoint.sh /entrypoint.sh

RUN chmod 700 /entrypoint.sh


ENTRYPOINT ["tini", "--", "/entrypoint.sh"]

CMD ["node", "--version"]

