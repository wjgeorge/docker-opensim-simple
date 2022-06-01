ARCH=pc

all: build run

build:
	docker build -f Dockerfile.${ARCH} -t opensim-simple .

run:
	mkdir -p /tmp/foo
	# docker run -it --rm -p 9000:9000/tcp -p 9000:9000/udp --mount type=bind,target=/var/opensim,source=/tmp/foo opensim-simple
	docker run -it --rm -p 9000:9000/tcp -p 9000:9000/udp -v /tmp/foo:/var/opensim opensim-simple

clean:
	rm -fr /tmp/foo
