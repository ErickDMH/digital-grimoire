#!/usr/bin/env bash
set -e

echo "🧙 Initializing Digital Grimoire structure..."

# --- Vault (human-first knowledge) ---
mkdir -p vault/{concepts,patterns,procedures,tools,projects,reflections}

# --- Forge (AI + execution layer) ---
mkdir -p forge/{prompts,tools/{codegen,refactor,explain,infra}}

# --- AI plumbing ---
mkdir -p ai/{models,embeddings,context}

# --- Automation ---
mkdir -p automation/n8n

# --- Infrastructure ---
mkdir -p infra/terraform

# --- Users (multi-user future) ---
mkdir -p users/erick

# --- Core files ---
touch forge/registry.yaml
touch users/erick/profile.md
touch users/erick/preferences.yaml

# --- Root README (only if missing) ---
if [ ! -f README.md ]; then
cat <<'MD' > README.md
# Digital Grimoire

A human-first, AI-augmented knowledge system.

- Vault = understanding
- Forge = capability
- AI = amplification
MD
fi

echo "✅ Digital Grimoire initialized successfully."
