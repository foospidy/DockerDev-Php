build:
	docker build -t php-dev .

run:
	# Starting DockerDev-Php
	@docker run -i -p 80:80 -v $$HOME/Dev/github.com/:/Php/ -t php-dev /bin/bash
