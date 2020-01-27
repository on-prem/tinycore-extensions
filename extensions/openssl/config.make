# Config values

VERSION ?= 1.0.2u
package := openssl
package_name := $(package)-$(VERSION).tar.gz
package_source := https://www.openssl.org/source/old/1.0.2/openssl-1.0.2u.tar.gz
package_license := "OpenSSL"
compile_deps := perl5 squashfs-tools curl
