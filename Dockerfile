FROM registry.access.redhat.com/ubi8/nginx-120
WORKDIR /opt/app-root/src
#COPY . .
COPY test /tmp/index.html
RUN ln -s /tmp/index.html index.html
    
CMD nginx -g "daemon off;"
