# Config values

VERSION ?= 19.12
package := picolisp
package_name := $(package)-$(VERSION).tgz
package_source := https://software-lab.de/picoLisp-19.12.tgz
package_license := "picolisp"
compile_deps := perl5 squashfs-tools curl picolisp picolisp-lib ipv6-4.19.10-tinycore64
