# Makefile

include config.make

.PHONY: all setup build

all: setup deps build perms tcz

setup:
		curl -L -o $(package_name) $(package_source)
		tar -xzf $(package_name)

build:
		sudo pip3 install ansible==2.7
		cd $(package)-$(VERSION) && \
		make all PREFIX_DIR=$(artifact)/$(package)

include ../build.make
