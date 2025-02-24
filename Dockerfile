FROM nginx:latest
COPY nginx.conf /etc/nginx/nginx.conf
COPY ./My_WebPage /usr/share/nginx/html/
EXPOSE 80
CMD [ "nginx", "-g", "daemon off;" ]