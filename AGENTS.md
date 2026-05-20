# AGENTS.md — Repository guidance for AI coding agents

Kurz, handlungsorientiert und verlinkend. Diese Datei hilft AI‑Agenten schnell produktiv zu werden.

What this repo is
- This repo contains everything needed to setup my environment on
a new system.
- The setup should be as similar as possible on all systems.
- Files and automation to have the same setup on all systems. The
setup should be similar regardless if I am working on MacOS,
Windows, Linux (Ubuntu, Debian, Gentoo) or FreeBSD.
- Dotfiles for the environment are managed with `chezmoi`.
- On macOS packages are managed with Homebrew. The `Brewfile` in the repo root lists packages for macOS.
- Ansible playbooks system setup and package installation are under `ansible/`.

Important files and entry points
- Repository root: [README.md](README.md) — general setup and overview.
- Setup automation: [ansible/setup.yml](ansible/setup.yml) - General setup automation for the environment.
- Package automation: [ansible/install_packages.yml](ansible/install_packages.yml) and [ansible/vars/](ansible/vars/) — OS-specific package lists.
- Brewfile: [Brewfile](Brewfile)

Recommended agent behavior
- Link, don't copy: prefer referencing existing docs rather than duplicating content.
- Minimal changes: keep modifications small and focused; open a PR for larger changes.
- When asked to run commands, prefer to provide the exact commands and explain effects; do not run destructive commands without confirmation.
- Use `chezmoi diff` and `chezmoi apply` for dotfile changes; prefer `--dry-run`/`--diff` modes in suggestions.

Useful commands for local testing
- Check chezmoi diff:

```bash
chezmoi diff
```

- Apply changes (local):

```bash
chezmoi apply
```

- Run Ansible playbook (check/dry-run):

```bash
ansible-playbook ansible/install_packages.yml --check
```

- Run Ansible playbook (real run):

```bash
ansible-playbook ansible/install_packages.yml -K
```

Notes and caveats
- The 
- Package names vary between Linux distributions. Verify and adapt `ansible/vars/*` lists before running on production systems.
- The repo contains Mac-specific casks and VSCode extension lists in the `Brewfile`; these are not handled by the Ansible playbook.

If you want more focused agent instructions (e.g., a skill for packaging, a PR/commit checklist, or a CI hook), tell me which area to target and I will create it.