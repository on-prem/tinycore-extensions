# Config values

VERSION ?= 7.68.0
package := curl
package_name := $(package)-$(VERSION).tar.gz
package_source := https://curl.haxx.se/download/curl-7.68.0.tar.gz
package_license := "MIT"
compile_deps := perl5 squashfs-tools curl
