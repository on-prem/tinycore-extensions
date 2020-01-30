# Makefile

include config.make

.PHONY: all setup build

all: setup deps build tcz

setup:
		curl -L -o $(package_name) $(package_source)
		tar -xzf $(package_name)

build:
		mkdir -p $(artifact)-$(package)
		sudo pip3 install ansible==2.7
		sudo ln -sf /usr/local/bin/python3 /usr/bin/python
		cd $(package)-$(VERSION) && \
		sudo make all PREFIX_DIR=$(artifact)/$(package)

include ../build.make
