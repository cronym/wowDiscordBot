FROM gliderlabs/alpine:3.4

RUN apk-install nodejs

RUN mkdir -p /usr/local/bot
WORKDIR /usr/local/bot

COPY bot.js /usr/local/bot/
COPY package.json /usr/local/bot/

RUN npm install --save

CMD ["node", "/usr/local/bot/bot.js"]
