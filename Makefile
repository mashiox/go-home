all: build

build:
	docker build -t mashiox/go-home -f ./Dockerfile .
	
release:
	docker run -it mashiox/go-home \
		-v ./out:./out \
		go_install.sh

compile:
	docker run -it mashiox/go-home \
		go_build.sh
