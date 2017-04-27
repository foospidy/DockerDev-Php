build:
	docker build -t php-dev .

run:
	# Starting DockerDev-Php
	@docker run -i -p 80:80 -p3306:3306 -v $$HOME/Dev/github.com/:/Php/ -t php-dev /bin/bash
