# Config values

VERSION ?= 20.6
package := picolisp
package_name := $(package)-$(VERSION).tgz
package_source := https://software-lab.de/picoLisp-$(VERSION).tgz
package_license := "MIT"
compile_deps := perl5 squashfs-tools openssl-1.1.1-dev
