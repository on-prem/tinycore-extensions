# Config values

VERSION ?= 7.71.1
package := curl
package_name := $(package)-$(VERSION).tar.gz
package_source := https://curl.haxx.se/download/curl-7.71.1.tar.gz
package_license := "MIT"
compile_deps := perl5 squashfs-tools curl openssl-1.1.1-dev
