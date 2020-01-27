# Makefile

include config.make

.PHONY: all setup build build-doc

all: setup deps build perms build-doc tcz

setup:
		curl -L -o $(package_name) $(package_source)
		tar -xzf $(package_name)

build:
		mkdir -p $(artifact)/$(package)/usr/local/etc/init.d
		cd $(package)-$(VERSION) && \
		./configure --prefix=/usr/local --sysconfdir=/usr/local/etc/ssh && \
		$(MAKE) -j 4 && \
		$(MAKE) install DESTDIR=$(artifact)/$(package)
		cp -v $(package).tcz.dep $(artifact)
		cp -v $(package).ini $(artifact)/$(package)/usr/local/etc/init.d/$(package)

build-doc:
		mkdir -p $(artifact)/$(package)-doc/usr/local
		mv $(artifact)/$(package)/usr/local/share $(artifact)/$(package)-doc/usr/local
		$(MAKE) tcz-doc

include ../build.make
