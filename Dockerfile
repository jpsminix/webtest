FROM nginx
#RUN apk add --no-cache python2 g++ make
WORKDIR /app
COPY . .
RUN echo $NODENAME > /etc/LOL
CMD sleep 36000
#EXPOSE 3000
