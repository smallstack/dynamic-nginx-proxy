set -e

echo "replacing environment variables in nginx.conf..."
envsubst '\$PROXY_PASS' < /opt/work/nginx.conf > /etc/nginx/nginx.conf

echo "Starting nginx with command: nginx -g 'daemon off;'"
nginx -g 'daemon off;'