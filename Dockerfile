# escape=`
# executes src/index.html with nginx
# docker build -t webserver .
# docker run -d -p 80:80 webserver
FROM nginx:alpine

COPY src /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]