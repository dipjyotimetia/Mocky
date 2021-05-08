FROM alpine:3.13.5

ENV MOUNTEBANK_VERSION=2.4.0

RUN apk add --update nodejs-lts && \
    apk add --update npm
RUN npm install -g mountebank@${MOUNTEBANK_VERSION} --production

COPY . .

RUN npm i

EXPOSE 2525

CMD [ "npm", "start" ]