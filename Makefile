.PHONY: all
all:
	@echo "Use 'make Brewfile' to update the Brewfile."
	@exit 64

# Update the Brewfile
.PHONY: Brewfile
Brewfile:
	brew bundle dump --file=Brewfile --force

# Cleanup brew installed packages
.PHONY: cleanup
cleanup:
	brew bundle cleanup --global --force

# Install oh-my-posh nerdfont
.PHONY: fonts
fonts:
	oh-my-posh font install FiraCode


