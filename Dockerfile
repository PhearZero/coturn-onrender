FROM ubuntu/nginx

RUN apt update && apt install -y coturn

RUN echo TURNSERVER_ENABLED=1 > /etc/default/coturn

CMD ["coturn", "--no-auth"]
