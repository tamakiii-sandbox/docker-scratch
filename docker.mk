.PHONY: help clean

IMAGE_UBUNTU := docker-scratch/ubuntu

setup: \
	build

build: \
	build-ubuntu

build-ubuntu: ubuntu.docker
	docker build -t $(IMAGE_UBUNTU) -f $< .

login-ubuntu:
	docker run -it --rm -v $(realpath .):/local/docker-scratch -w /local/docker-scratch $(IMAGE_UBUNTU) bash

clean:
	docker image rm $(UBUNTU)
