FROM registry.access.redhat.com/ubi8/nginx-120
WORKDIR /opt/app-root/src
COPY . .
RUN ln -s /tmp/index.html index.html
    
CMD cat HEAD > /tmp/index.html && \ 
    echo "<li> Nombre del POD: "$MY_POD_NAME"</li>" >> /tmp/index.html && \ 
    echo "<li> IP del POD: "$MY_POD_IP"</li>" >> /tmp/index.html && \     
    echo "<li> Nombre del nodo: "$MY_NODE_NAME"</li>" >> /tmp/index.html && \ 
    cat TAIL >> /tmp/index.html && \     
    nginx -g "daemon off;"
