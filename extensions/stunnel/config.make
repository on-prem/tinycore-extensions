# Config values

VERSION ?= 5.58
package := stunnel
package_name := $(package)-$(VERSION).tar.gz
package_source := https://www.stunnel.org/downloads/stunnel-$(VERSION).tar.gz
package_license := "GPL-2.0"
compile_deps := perl5 squashfs-tools curl pcre-dev openssl-1.1.1-dev zlib_base-dev
