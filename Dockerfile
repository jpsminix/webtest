FROM registry.access.redhat.com/ubi8/nginx-120
WORKDIR /opt/app-root/src
COPY . .
RUN ln -s /tmp/lol lol
    
RUN ls -ltr /opt/app-root/src    
CMD echo $NODENAME >> /opt/app-root/src/index.html \
nginx -g "daemon off;"
