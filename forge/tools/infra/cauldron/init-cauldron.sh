#!/usr/bin/env bash

set -e

# --------------------------------------------
# Cauldron — Infra Tool Bootstrap
# --------------------------------------------

BASE_DIR="forge/tools/infra/cauldron"

echo "🜂 Initializing Cauldron (infra tool)..."

# Create directory structure
mkdir -p "$BASE_DIR"/{syncthing/config,syncthing/ignore}

# Create docker-compose placeholder
cat > "$BASE_DIR/docker-compose.yml" <<'EOF'
version: "3.8"

services:
  syncthing:
    image: syncthing/syncthing:latest
    container_name: cauldron-syncthing
    hostname: cauldron
    volumes:
      # Vault will be bind-mounted here later
      # - /absolute/path/to/vault:/vault
      - ./syncthing/config:/var/syncthing
    ports:
      - "8384:8384"      # Web UI
      - "22000:22000/tcp"
      - "22000:22000/udp"
      - "21027:21027/udp"
    restart: unless-stopped
EOF

# Create README
cat > "$BASE_DIR/README.md" <<'EOF'
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
EOF

# Create placeholder for tool description reference
touch "$BASE_DIR/cauldron.tool.md"

echo "🜁 Cauldron structure created at: $BASE_DIR"
echo "Next step: bind the Vault and ignite the container."
