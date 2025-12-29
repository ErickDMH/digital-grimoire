---
type: tool
id: tool-init-grimoire
status: stable
domain: infra
purpose: Initialize a canonical Digital Grimoire directory structure.
inputs:
  - empty or partially initialized repository
outputs:
  - standardized grimoire folder structure
constraints:
  - deterministic
  - idempotent
related:
  - concept-core-note-types
---

## Description

This tool bootstraps the Digital Grimoire filesystem structure.

It creates the minimum required directories and files to ensure:
- Obsidian can be used immediately
- AI tooling has a predictable layout
- Infrastructure and automation layers are isolated
- The system can scale to multi-user setups

## Non-goals

- No content creation
- No configuration of external services
- No assumptions about deployment or environment
