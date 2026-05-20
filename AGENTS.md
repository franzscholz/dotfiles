# AGENTS.md — Repository guidance for AI coding agents

Kurz, handlungsorientiert und verlinkend. Diese Datei hilft AI‑Agenten schnell produktiv zu werden.

What this repo is
- Dotfiles managed with `chezmoi`.
- macOS Homebrew `Brewfile` in the repo root lists packages for macOS.

Important files and entry points
- Repository root: [README.md](README.md) — general setup and overview.
- Package automation: [ansible/install_packages.yml](ansible/install_packages.yml) and [ansible/vars/](ansible/vars/) — OS-specific package lists.
- Brewfile: [Brewfile](Brewfile)

Recommended agent behavior
- Link, don't copy: prefer referencing existing docs rather than duplicating content.
- Minimal changes: keep modifications small and focused; open a PR for larger changes.
- When asked to run commands, prefer to provide the exact commands and explain effects; do not run destructive commands without confirmation.
- Use `chezmoi diff` and `chezmoi apply` for dotfile changes; prefer `--dry-run`/`--diff` modes in suggestions.

Useful commands for local testing
- Checkchezmoi diff:

```bash
chezmoi diff
```

- Apply changes (local):

```bash
chezmoi apply
```

Notes and caveats
- The repo contains Mac-specific casks and VSCode extension lists in the `Brewfile`.

If you want more focused agent instructions (e.g., a skill for packaging, a PR/commit checklist, or a CI hook), tell me which area to target and I will create it.