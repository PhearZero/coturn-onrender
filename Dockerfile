FROM ubuntu/nginx

RUN apt update && apt install -y coturn

RUN echo TURNSERVER_ENABLED=1 > /etc/default/coturn
ADD docker-entrypoint.sh .
EXPOSE 3478 3478/udp 80
ENTRYPOINT ["./docker-entrypoint.sh"]
