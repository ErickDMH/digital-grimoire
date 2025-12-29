# Cauldron

**Type:** Tool  
**Domain:** Infrastructure  
**Status:** Active  

---

## Purpose

The Cauldron is the infrastructure tool responsible for sustaining the
continuity of the Grimoire Vault across devices.

It binds the Vault to the physical world by ensuring that the same knowledge
exists, consistently, wherever the Grimoire is accessed.

The Cauldron does not generate, interpret, or structure knowledge.
It preserves its presence.

---

## What the Cauldron Is

- A containerized Syncthing instance
- A controlled binding between devices and the Vault
- A reproducible, inspectable piece of infrastructure

The Cauldron exists to solve one problem only:

> **The Grimoire must not fragment.**

---

## What the Cauldron Is Not

- Not a thinking aid
- Not a productivity system
- Not a backup strategy (though it complements one)
- Not aware of meaning, content, or structure

It operates below cognition.

---

## Design Principles

### 1. The Vault Is Sovereign

The Vault exists independently of the Cauldron.
If the Cauldron is stopped, removed, or replaced, the Vault remains intact.

### 2. Binding Without Ownership

The Cauldron touches the Vault through a bind mount.
It does not own it, version it, or encapsulate it.

### 3. Reproducibility Over Convenience

The Cauldron is defined in code and can be re-instantiated
without relying on memory or manual setup.

### 4. Noise Is Rejected

Transient state, cache, and device-specific artifacts are ignored.
Only meaningful structure is allowed to persist.

---

## Operational Scope

The Cauldron is responsible for:

- Synchronizing the Vault between trusted devices
- Maintaining consistency at the file-system level
- Remaining invisible during normal Grimoire use

The Cauldron is not interacted with daily.
It is invoked, observed, and then forgotten.

---

## Relationship to the Grimoire

The Cauldron is foundational but peripheral.

It enables every other tool, pattern, and project,
while remaining conceptually separate from them.

If the Grimoire is a living text,
the Cauldron is the heat that keeps it from freezing.

---

## Failure Mode

If the Cauldron fails:

- No knowledge is lost
- The Vault remains readable
- Synchronization pauses

This failure is reversible.

---

## Replacement

The Cauldron is an implementation, not a concept.

Syncthing may be replaced.
Docker may be removed.
The idea of a binding layer remains.

---

## Invocation

The Cauldron is invoked explicitly via infrastructure commands.
It should never be implicit.

When active, it is silent.
