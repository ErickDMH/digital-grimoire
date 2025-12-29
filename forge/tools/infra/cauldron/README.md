# Cauldron (Infra Tool)

The Cauldron is responsible for sustaining continuity of the Grimoire Vault
across devices.

It encapsulates Syncthing inside Docker, binding the Vault without owning it.

This directory contains:
- docker-compose.yml → runtime definition
- syncthing/config/  → persistent syncthing state
- cauldron.tool.md   → conceptual definition (stored in the Vault)

This tool enables the Grimoire.
It does not interpret it.
