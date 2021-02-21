# Makefile

include config.make

.PHONY: all setup build

all: setup deps build perms tcz

setup:
		curl -L -o $(package_name) $(package_source)
		tar -xzf $(package_name)

build:
		cd $(package)-$(VERSION) && \
		./configure --prefix=/usr/local \
		  --sysconfdir=/usr/local/etc/stunnel \
		  --with-ssl=/usr/local \
		  --disable-systemd && \
		$(MAKE) -j 4 && \
		$(MAKE) install DESTDIR=$(artifact)/$(package)
		cp -v $(package).tcz.dep $(artifact)
		rm -rfv $(artifact)/$(package)/usr/local/share

include ../build.make
