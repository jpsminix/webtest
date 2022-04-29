FROM nginx
#RUN apk add --no-cache python2 g++ make
WORKDIR /app
COPY . .
RUN sleep 36000
CMD ["node", "src/index.js"]
EXPOSE 3000
