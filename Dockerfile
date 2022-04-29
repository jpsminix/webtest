FROM registry.access.redhat.com/ubi8/nginx-120
WORKDIR /opt/app-root/src
COPY . .
RUN ls -ltr /opt/app-root/src
RUN chmod 777 /opt/app-root/src/index.html
CMD echo $NODENAME >> /opt/app-root/src/index.html \
nginx -g "daemon off;"
