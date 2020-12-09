# Config values

VERSION ?= 1.1.1i
package := openssl
package_name := $(package)-$(VERSION).tar.gz
package_source := https://www.openssl.org/source/$(package_name)
package_license := "OpenSSL"
compile_deps := perl5 squashfs-tools curl
