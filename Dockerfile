FROM nginx:alpine
MAINTAINER Glovecc<gtcc1108@gmail.com>

WORKDIR /app
COPY . /app

ENV API=https://api.wcc.best/sub?

RUN rm /usr/share/nginx/html/index.html

CMD echo $API  > /app/dist/static/serverConfig.txt && \
    cp -irf /app/dist/* /usr/share/nginx/html/ && \
    ./inits
