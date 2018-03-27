# Servidor web
FROM nginx

# Agregar HTML
ADD ./html /usr/share/nginx/html/
# Agregar configuración de protección de usuarios
ADD conf.d/default.conf /etc/nginx/conf.d/
ADD htpasswd /etc/nginx/.htpasswd