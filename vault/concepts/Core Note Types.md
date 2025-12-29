---
type: concept
id: core-note-types
status: draft
domains:
  - meta
  - second_brain
  - grimoire
summary: >
  Defines the canonical knowledge artifacts used to structure
  and evolve the Digital Grimoire.
related:
  - grimoire-core
---

### 1  `Concept`

> _What something is.

```
type: concept 
id: concept-http-api 
status: stable | draft 
domain: backend | infra | frontend | meta 
summary: One-paragraph human explanation 
related:   
 - pattern-rest-api
```

**Rules**

- No how-to
- No code
- Timeless
- Pure understanding

**AI guarantee**

- Safe to explain
- Safe to compare
- Safe to reference in code comments

### 2  `Pattern`

> _A reusable solution to a recurring problem._

```
type: pattern 
id: pattern-rest-api 
problem: What problem this solves 
context: When this applies 
constraints:   
 - performance   
 - maintainability 
solution: High-level description 
related:   
 - concept-http-api 
```

**Rules**

- No stack-specific code
- Describes shape, not implementation

**AI guarantee**

- Can be turned into scaffolding
- Can influence architecture decisions

### 3  `Procedure`

> _How to do something step by step._

```
type: procedure 
id: procedure-create-api 
goal: What success looks like 
inputs:   
 - concept-http-api   
 - pattern-rest-api 
steps:   
 - step 1   
 - step 2 
outputs:   
 - running service 
```

**Rules**

- Ordered
- Deterministic
- Human-readable

**AI guarantee**

- Can be automated later
- Can become scripts/tools
-

### 4 `Tool` (description only, not code)

> _What a tool does, not how it’s implemented._

```
type: tool 
id: tool-api-codegen 
purpose: Generate API boilerplate 
inputs:   
 - concept   
 - pattern outputs:   
 - code constraints:   
 - deterministic 
````

**Rules**

- No prompts here
- No implementation details

**AI guarantee**

- Can be mapped to Forge artifacts

### 5  `Project`

> _Current intent._

```
type: project 
id: project-user-service 
goal: Build user service 
status: active 
uses:   
 - tool-api-codegen   
 - pattern-rest-api 
```

**Rules**

- Ephemeral
- Allowed to be messy

**AI guarantee**

- High-priority context
- Biases generation
