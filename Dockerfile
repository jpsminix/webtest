FROM nginx
#RUN apk add --no-cache python2 g++ make
WORKDIR /app
COPY . .
# RUN 
CMD echo $NODENAME > LOL
CMD sleep 36000
#EXPOSE 3000
