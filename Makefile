.PHONY: clean docs help
.DEFAULT_GOAL := help

ENV := mqtt

define PRINT_HELP_PYSCRIPT
import re, sys

for line in sys.stdin:
	match = re.match(r'^([a-zA-Z_-]+):.*?## (.*)$$', line)
	if match:
		target, help = match.groups()
		print("%-20s %s" % (target, help))
endef
export PRINT_HELP_PYSCRIPT
BROWSER := python -c "$$BROWSER_PYSCRIPT"

IMAGE_NAME := unprtd
CONTAINER_NAME := rytd
help:
	@python -c "$$PRINT_HELP_PYSCRIPT" < $(MAKEFILE_LIST)

build:  ## Construir el contenedor
	docker-compose build

run:    ## Ejecutar el contenedor
	docker-compose start

stop:   ## Detener el contenedor
	docker-compose stop

re:     ## Recrear el contenedor y relanzarlo
	docker-compose down
	$(MAKE) up

shell_http:
	docker-compose exec -ti -e TERM=xterm http bash

shell_mail:
	docker-compose exec -ti -e TERM=xterm mail bash



deploy:
	eval $$(docker-machine env $(ENV)) && \
		$(MAKE) up
