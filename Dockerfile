FROM registry.access.redhat.com/ubi8/nginx-120
WORKDIR /opt/app-root/src
COPY . .
RUN chown -R 1001:0 /opt/app-root/src
USER 1001
    
RUN ls -ltr /opt/app-root/src    
CMD echo $NODENAME >> /opt/app-root/src/index.html \
nginx -g "daemon off;"
