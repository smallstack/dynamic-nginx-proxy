FROM nginx
ADD nginx.conf /etc/nginx/nginx.conf.tmpl
RUN envsubst < /etc/nginx/nginx.conf.tmpl > /etc/nginx/nginx.conf


