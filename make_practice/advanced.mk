# variables
SHELL := /bin/bash
sep := $(shell python3 -c "print('-'*15)")
log_file := $(shell date +"%Y%m%d_%H%M%S").log


# Banner
define run
	@echo "$(sep)"
	@echo "> $(1)"
	@echo "$(sep)"
	@echo "[Output]"
	@$(1)
	@echo
endef


# Individual system checks
pci:
	$(call run, lspci)

storage:
	$(call run, lsblk)

memory:
	$(call run, lsmem)

cpu:
	$(call run, lscpu)

network:
	$(call run, ip addr)
	$(call run, ip route)


# Full system check
sys_checks := pci storage memory cpu network
full: $(sys_checks) 


# Full check and save log
log:
	set -eo pipefail; \
	$(MAKE) -f $(firstword $(MAKEFILE_LIST)) $(sys_checks) 2>&1 | tee $(log_file)


# Phony targets
.PHONY: $(sys_checks) full log