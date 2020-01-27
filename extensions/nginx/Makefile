# Makefile

include config.make

.PHONY: all setup build

all: setup deps build perms tcz

setup:
		curl -L -o $(package_name) $(package_source)
		tar -xzf $(package_name)

build:
		mkdir -p $(artifact)/$(package)/usr/local/tce.installed $(artifact)/$(package)/usr/local/etc/init.d
		cd $(package)-$(VERSION) && \
		./configure --with-http_realip_module --with-pcre \
		  --with-http_ssl_module --with-http_gzip_static_module \
		  --user=nginx --group=nginx --conf-path=/usr/local/etc/nginx/nginx.conf \
		  --sbin-path=/usr/local/sbin/nginx \
		  --error-log-path=/var/log/nginx/error.log --pid-path=/var/run/nginx.pid \
		  --lock-path=/var/run/nginx.lock \
		  --http-log-path=/var/log/nginx/access.log --prefix=/usr/local/nginx && \
		$(MAKE) -j 4 && \
		$(MAKE) install DESTDIR=$(artifact)/$(package)
		cp -v $(package).tcz.dep $(artifact)
		cp -v tce.installed $(artifact)/$(package)/usr/local/tce.installed/$(package)
		cp -v $(package).ini $(artifact)/$(package)/usr/local/etc/init.d/$(package)
		rm -fv $(artifact)/$(package)/usr/local/etc/nginx/nginx.conf \
			$(artifact)/$(package)/usr/local/etc/nginx/fastcgi.conf \
			$(artifact)/$(package)/usr/local/etc/nginx/fastcgi_params

include ../build.make
