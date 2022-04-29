FROM openshift/ubi7
#RUN apk add --no-cache python2 g++ make
WORKDIR /app
#COPY . .
#RUN yum install nginx
# RUN 
CMD echo $NODENAME && sleep 3600
#EXPOSE 3000
