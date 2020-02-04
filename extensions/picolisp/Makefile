# Makefile

include config.make

.PHONY: all setup build build-doc build-lib

all: setup deps build perms build-doc build-lib tcz

setup:
		curl -L -o $(package_name) $(package_source)
		tar -xzf $(package_name)

build:
		mkdir -p $(artifact)/$(package)/usr/local/tce.installed \
			$(artifact)/$(package)/usr/local/share/picolisp/bin \
			$(artifact)/$(package)/usr/local/share/licences/picolisp \
			$(artifact)/$(package)
		/usr/local/tce.installed/picolisp
		cd picoLisp/src64 && \
		$(MAKE)
		cd picoLisp && \
		mv -v bin/picolisp $(artifact)/$(package)/usr/local/share/picolisp/bin && \
		mv -v COPYING $(artifact)/$(package)/usr/local/share/licences/picolisp
		cp -v tce.installed $(artifact)/$(package)/usr/local/tce.installed/$(package)

build-doc:
		mkdir -p $(artifact)/$(package)-doc/usr/local/share/doc/picolisp
		cd picoLisp && \
		mv -v man $(artifact)/$(package)-doc/usr/local/share && \
		mv -v doc doc64 $(artifact)/$(package)-doc/usr/local/share/doc/picolisp && \
		mv -v CHANGES CREDITS INSTALL README $(artifact)/$(package)-doc/usr/local/share/doc/picolisp
		$(MAKE) tcz-doc

build-lib:
		mkdir -p $(artifact)/$(package)-lib/usr/local/share/picolisp
		cd picoLisp && \
		mv -v app bin cygwin ersatz games img lib loc misc opt src64 test $(artifact)/$(package)-lib/usr/local/share/picolisp && \
		mv -v dbg.l ext.l lib.css lib.l pil $(artifact)/$(package)-lib/usr/local/share/picolisp
		cp -v tce.installed-lib $(artifact)/$(package)-lib/usr/local/tce.installed/$(package)
		$(MAKE) tcz-lib

include ../build.make
