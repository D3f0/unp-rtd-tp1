# Redes y Transmisión de Datos - Soporte TP1

Para acceder a la práctica, utilizar el aula virtual: http://www.dit.ing.edu.ar/moodle

Dockerfiles para generar la imágenes para la práctica 1 de Redes y Transmisión de Datos.


## Utilización

Para lanzar todos los servicios (80, 1100, 2500).

```
docker-compose up --build -d
```

## `http` Servidor web 

Servior web para realizar las capturas con [Wireshark](https://www.wireshark.org/).

## `mail` Servidor de mail de pruba

Preparado para las pruebas con `telnet` de envío y recepción de mails.

El contenedor tiene 2 servicios:

1. El Servidor SMTP acepta cualquier mail @localhost y lo guarda en `/tmp/mail`.
2. El servior POP3 acepta como nombre de usuario destinatarios que hayan sido enviados por 1.


El código tanto del servidor POP como SMTP son tomados de los ejemplos del libro "Twisted Network Programming Essentials" de [Jessica McKellar](https://github.com/jesstess)

![Twisted Network Programming Essentials](https://images-na.ssl-images-amazon.com/images/I/518wm5u3TjL._SX377_BO1,204,203,200_.jpg)
