# Makefile

include config.make

.PHONY: all setup build build-doc build-dev

all: setup deps build perms build-doc build-dev tcz

setup:
		curl -L -o $(package_name) $(package_source)
		tar -xzf $(package_name)

build:
		mkdir -p $(artifact)/$(package)/usr/local/tce.installed
		cd $(package)-$(VERSION) && \
		./config --prefix=/usr/local --openssldir=/usr/local/etc/ssl shared zlib-dynamic no-ssl3 && \
		$(MAKE) -j 4 && \
		$(MAKE) install DESTDIR=$(artifact)/$(package)
		cp -v tce.installed $(artifact)/$(package)/usr/local/tce.installed/$(package)
		cp -v $(package).cnf $(artifact)/$(package)/usr/local/etc/ssl

build-doc:
		mkdir -p $(artifact)/$(package)-doc/usr/local/share
		sudo mv $(artifact)/$(package)/usr/local/share/man $(artifact)/$(package)-doc/usr/local/share
		sudo mv $(artifact)/$(package)/usr/local/share/doc $(artifact)/$(package)-doc/usr/local/share
		$(MAKE) tcz-doc

build-dev:
		mkdir -p $(artifact)/$(package)-dev/usr/local/lib
		sudo mv $(artifact)/$(package)/usr/local/include $(artifact)/$(package)-dev/usr/local
		sudo mv $(artifact)/$(package)/usr/local/lib/*.a $(artifact)/$(package)-dev/usr/local/lib
		sudo mv $(artifact)/$(package)/usr/local/lib/pkgconfig $(artifact)/$(package)-dev/usr/local/lib
		$(MAKE) tcz-dev

include ../build.make
