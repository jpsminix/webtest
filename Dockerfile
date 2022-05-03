FROM registry.access.redhat.com/ubi8/nginx-120
WORKDIR /opt/app-root/src
COPY . .
RUN ln -s /tmp/index.html index.html
    
CMD cat HEAD > /tmp/index.html && \ 
    echo $NODENAME >> /tmp/index.html && \ 
    cat TAIL >> /tmp/index.html && \     
    nginx -g "daemon off;"
