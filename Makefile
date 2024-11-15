MAINTAINER = carsme

PACKAGES = $(shell aur-lspkg --repo official --maintainer $(MAINTAINER) --pkgbase)

.PHONY: sync
sync:
	@for pkg in $(PACKAGES); do [ -d $$pkg ] || echo $$pkg; done \
		| xargs --no-run-if-empty pkgctl repo clone
	@echo $(PACKAGES) | xargs -n1 | xargs -P8 -I{} git -C {} pull

.PHONY: check-versions
check-versions:
	@pkgctl version check $(PACKAGES)
