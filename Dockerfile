FROM node:20
WORKDIR /app
RUN git clone https://github.com/jirapatfifa/Parse-server-Api.git /app
RUN git pull
RUN npm install
COPY ./server.key /app
COPY ./server.crt /app
EXPOSE 8705
CMD ["node", "api-wallboard-https.js"]

