# Config values

VERSION ?= 1.25.0
package := jidoteki-admin
package_name := $(package)-$(VERSION).tar.gz
package_source := https://github.com/on-prem/jidoteki-admin/archive/v$(VERSION).tar.gz
package_license := "MIT"
compile_deps := perl5 squashfs-tools curl python3.6 libffi openssl-1.1.1-dev
