MAINTAINER = carsme

.PHONY: sync
sync:
	aur-lspkg --repo official --maintainer $(MAINTAINER) --pkgbase \
		| xargs pkgctl repo clone
	aur-lspkg --repo official --maintainer $(MAINTAINER) --pkgbase \
		| xargs -I{} git -C {} pull

.PHONY: check-versions
check-versions:
	aur-lspkg --repo official --maintainer $(MAINTAINER) --pkgbase \
		| xargs pkgctl version check
