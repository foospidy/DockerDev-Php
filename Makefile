build:
	docker build -t php-dev .

run:
	# Starting DockerDev-Php
	@docker run -i -p 80:80 -v $$HOME/tmp/Php/:/Php/ -t php-dev /bin/bash
