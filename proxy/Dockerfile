FROM nginx

COPY default.conf /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/nginx.conf
COPY sites-enabled/* /etc/nginx/sites-enabled/
COPY index.html /usr/share/nginx/html

CMD ["nginx", "-g", "daemon off;"]
       

		
