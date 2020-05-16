PLATFORM="--platform linx/arm/v7"

all: build run

build:
	docker build --no-cache ${PLATFORM} -t opensim-simple .

run:
	docker run -it ${PLATFORM} --add-host billg-rpiu.local:192.168.1.12 -p 9000:9000/tcp -p 9000:9000/udp -v "/tmp/foo:/var/opensim" opensim-simple bash; exit 0
