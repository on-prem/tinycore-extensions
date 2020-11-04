# Config values

VERSION ?= 8.4p1
package := openssh
package_name := $(package)-$(VERSION).tar.gz
package_source := https://ftp.riken.jp/pub/OpenBSD/OpenSSH/portable/$(package_name)
package_license := "BSD 2-Clause,BSD 3-Clause,ISC,MIT"
compile_deps := perl5 squashfs-tools curl openssl-1.1.1-dev
