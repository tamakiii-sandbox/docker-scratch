.PHONY: help clean

help:
	@cat $(firstword $(MAKEFILE_LIST))

build: \
	hello

hello: hello.cc
	g++ -o $@ -static $<

clean:
	rm hello
