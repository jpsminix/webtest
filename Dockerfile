FROM registry.access.redhat.com/ubi8/nginx-120
WORKDIR /opt/app-root/src
COPY . .

CMD echo $NODENAME >> /opt/app-root/src/index.html \
nginx -g "daemon off;"
