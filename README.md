[age](https://github.com/FiloSottile/age) as a Docker image.

* Build:
`docker build -t age .`

* Run:
	* docker cli:

	`docker run -it --rm --network none -v "/path/to/your/key":/keys:ro -v "/path/to/your/secrets":/secrets:ro age:latest -i /keys/path/to/key -d /secrets/path/to/secret`

	* docker-compose:

	```yml
	services:
	  age:
	    build:
	      context: .
	    tty: true
	    stdin_open: true
	    network_mode: none
	    volumes:
	      - /path/to/keys/:/keys:ro
	      - /path/to/secrets:/secrets:ro
	    command: '-i "/keys/path/to/key" -d "/secrets/path/to/secret"'

	```
