# Makefile

include config.make

.PHONY: all setup build build-doc build-lib

all: setup deps build perms build-doc build-lib tcz

setup:
		curl -L -o $(package_name) $(package_source)
		tar -xzf $(package_name)
		cd /tmp && \
		curl -L -O http://repo.tinycorelinux.net/10.x/x86_64/tcz/picolisp.tcz && \
		curl -L -O http://repo.tinycorelinux.net/10.x/x86_64/tcz/picolisp-lib.tcz && \
		curl -L -O http://repo.tinycorelinux.net/10.x/x86_64/tcz/ipv6-4.19.10-tinycore64.tcz && \
		curl -L -O http://repo.tinycorelinux.net/10.x/x86_64/tcz/netfilter-4.19.10-tinycore64.tcz && \
		tce-load -icl picolisp.tcz picolisp-lib.tcz ipv6-4.19.10-tinycore64.tcz netfilter-4.19.10-tinycore64.tcz

build:
		mkdir -p $(artifact)/$(package)/usr/local/tce.installed \
			$(artifact)/$(package)/usr/local/share/picolisp/bin \
			$(artifact)/$(package)/usr/local/share/licences/picolisp \
			$(artifact)/$(package)
		cd picoLisp/src64 && \
		$(MAKE)
		cd picoLisp && \
		mv -v bin/picolisp $(artifact)/$(package)/usr/local/share/picolisp/bin && \
		mv -v COPYING $(artifact)/$(package)/usr/local/share/licences/picolisp
		cp -v tce.installed $(artifact)/$(package)/usr/local/tce.installed/$(package)

build-doc:
		sudo mkdir -p $(artifact)/$(package)-doc/usr/local/share/doc/picolisp
		cd picoLisp && \
		sudo mv -v man $(artifact)/$(package)-doc/usr/local/share && \
		sudo mv -v doc doc64 $(artifact)/$(package)-doc/usr/local/share/doc/picolisp && \
		sudo mv -v CHANGES CREDITS INSTALL README $(artifact)/$(package)-doc/usr/local/share/doc/picolisp
		$(MAKE) tcz-doc

build-lib:
		sudo mkdir -p $(artifact)/$(package)-lib/usr/local/tce.installed \
			$(artifact)/$(package)-lib/usr/local/share/picolisp
		cd picoLisp && \
		sudo mv -v app bin cygwin ersatz games img lib loc misc opt src64 test $(artifact)/$(package)-lib/usr/local/share/picolisp && \
		sudo mv -v dbg.l ext.l lib.css lib.l pil $(artifact)/$(package)-lib/usr/local/share/picolisp
		cp -v tce.installed-lib $(artifact)/$(package)-lib/usr/local/tce.installed/$(package)-lib
		$(MAKE) tcz-lib

include ../build.make
