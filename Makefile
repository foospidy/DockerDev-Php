build:
	docker build -t php-dev .

run:
	docker run -i -v $$HOME/tmp/Php/:/Php/ -t php-dev /bin/bash