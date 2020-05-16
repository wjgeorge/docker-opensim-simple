# PLATFORM="--platform linux/arm/v8"
TARGET=opensim-0.9.1.1

all: build run

build:
	docker build --no-cache --build-arg TARGET_TAG=${TARGET} ${PLATFORM} -t opensim-simple .

run:
	docker run -it ${PLATFORM} --add-host billg-rpiu.local:192.168.1.12 -p 9000:9000/tcp -p 9000:9000/udp -v "/tmp/foo:/var/opensim" opensim-simple bash; exit 0
