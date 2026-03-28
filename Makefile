.PHONY: all
all:
	@echo "Use 'make Brewfile' to update the Brewfile."
	@exit 64

.PHONY: Brewfile
Brewfile:
	brew bundle dump --global --force

.PHONY: cleanup
cleanup:
	brew bundle cleanup --global --force

