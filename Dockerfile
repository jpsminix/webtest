FROM openshift/base-centos7
#RUN apk add --no-cache python2 g++ make
WORKDIR /app
#COPY . .
RUN yum install nginx
# RUN 
CMD echo $NODENAME > LOL && sleep 3600
#EXPOSE 3000
