# Makefile

include config.make

.PHONY: all setup build build-doc build-dev

all: setup deps build perms build-doc build-dev tcz

setup:
		curl -L -o $(package_name) $(package_source)
		tar -xzf $(package_name)

build:
		cd $(package)-$(VERSION) && \
		./configure --prefix=/usr/local --disable-static --enable-threaded-resolver --with-ca-bundle=/usr/local/etc/ssl/certs/ca-certificates.crt --enable-ipv6 --with-libidn --enable-ldap --enable-ldaps --enable-tls-srp --with-gssapi --with-gnutls --without-ssl && \
		$(MAKE) -j 4 && \
		$(MAKE) install DESTDIR=$(artifact)/$(package)
		cp -v $(package).tcz.dep $(artifact)

build-doc:
		mkdir -p $(artifact)/$(package)-doc/usr/local
		sudo mv $(artifact)/$(package)/usr/local/share $(artifact)/$(package)-doc/usr/local
		$(MAKE) tcz-doc

build-dev:
		mkdir -p $(artifact)/$(package)-dev/usr/local/lib
		sudo mv $(artifact)/$(package)/usr/local/include $(artifact)/$(package)-dev/usr/local
		sudo mv $(artifact)/$(package)/usr/local/lib/pkgconfig $(artifact)/$(package)-dev/usr/local/lib
		$(MAKE) tcz-dev

include ../build.make
