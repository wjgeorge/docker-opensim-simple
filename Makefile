all: build run

build:
	docker build -t opensim-simple .

run:
	docker run -it -p 9000:9000/tcp -p 9000:9000/udp -v "/tmp/foo:/var/opensim" opensim-simple bash
