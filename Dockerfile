FROM nginx:latest
COPY static-web /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
