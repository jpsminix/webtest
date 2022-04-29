FROM registry.access.redhat.com/ubi8/nginx-120
WORKDIR /opt/app-root/src
COPY . .
COPY /opt/app-root/src/test /tmp/index.html
RUN ln -s /tmp/index.html index.html
    
CMD echo $NODENAME >> /tmp/index.html && \
nginx -g "daemon off;"
