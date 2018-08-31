#
# docker build -t madkote/rasa-webchat .
#
# docker run -p 8080:8080 madkote/rasa-webchat
#
# docker run --network host madkote/rasa-webchat
#

FROM node
ENV NPM_CONFIG_LOGLEVEL info
RUN mkdir -p /usr/src/app
COPY . /usr/src/app
WORKDIR /usr/src/app
RUN ls -la
RUN npm install

#RUN ls -la
#RUN npm prepare
#RUN ls -la

RUN npm run build


RUN ls -la
RUN ls dist
# EXPOSE 8080


CMD [ "npm", "run", "dev" ]

# CMD [ "node", "webpack.dev.js" ]
# CMD [ "node", "dist/webchat.js" ]
# CMD [ "node", "lib/index.js" ]
# CMD [ "node", "index.js" ]
# CMD [ "npm", "dev" ]
# CMD ["webpack-dev-server" "--config" "webpack.dev.js"]

