FROM debian:buster-slim

ENV TZ=Europe/Moscow

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update -y
RUN apt-get install -y nginx

CMD ["nginx", "-g", "daemon off;"]
