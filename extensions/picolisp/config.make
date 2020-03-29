# Config values

VERSION ?= 19.12
package := picolisp
package_name := $(package)-$(VERSION).tgz
package_source := https://software-lab.de/picoLisp-19.12.tgz
package_license := "MIT"
compile_deps := perl5 squashfs-tools openssl-1.1.1-dev
