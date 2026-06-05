###############################################################################
# NixOS & System Management
###############################################################################

.PHONY: deploy test boot upgrade debug up upp history repl clean

# Apply configuration and set it as default in the boot menu
deploy:
	git add -A
	sudo nixos-rebuild switch --flake .#nixos

# Test configuration in-place without touching boot entries
test:
	git add -A
	sudo nixos-rebuild test --flake .#nixos

# Prepare configuration for the next reboot only
boot:
	git add -A
	sudo nixos-rebuild boot --flake .#nixos

# Rebuild with verbose logs and error traces
debug:
	git add -A
	sudo nixos-rebuild switch --flake .#nixos --show-trace --verbose

# Update all flake inputs
up:
	nix flake update

# Update a specific flake input (Usage: make upp i=spicetify-nix)
upp:
	nix flake update --update-input $(i)

# Upgrade system packages and apply changes
upgrade:
	git add -A
	sudo nixos-rebuild switch --upgrade --flake .#nixos

# Show system profile generation history
history:
	nix profile history --profile /nix/var/nix/profiles/system

# Launch interactive Nix REPL with current nixpkgs
repl:
	nix repl -f flake:nixpkgs

# Wipe profile history older than 2 days and run garbage collection
clean:
	sudo nix profile wipe-history --profile /nix/var/nix/profiles/system --older-than 2d
	nix-collect-garbage -d
	sudo nix-collect-garbage -d
