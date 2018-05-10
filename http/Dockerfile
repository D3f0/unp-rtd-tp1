# Servidor web
FROM nginx

# Agregar HTML
ADD ./html /usr/share/nginx/html/

RUN dd if=/dev/urandom bs=1024 count=$((5* 1024)) of=/usr/share/nginx/html/random.data
# Agregar configuración de protección de usuarios
ADD conf.d/default.conf /etc/nginx/conf.d/
ADD htpasswd /etc/nginx/.htpasswd