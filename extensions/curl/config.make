# Config values

VERSION ?= 7.73.0
package := curl
package_name := $(package)-$(VERSION).tar.gz
package_source := https://curl.haxx.se/download/$(package_name)
package_license := "MIT"
compile_deps := perl5 squashfs-tools curl openssl-1.1.1-dev
