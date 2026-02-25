# lean-math-journey

Learning mathematics through **Lean 4** formalization - starting with **Measure Theory**.

## Overview

This repository tracks my journey learning mathematics by formalizing concepts and proofs in Lean 4. The goal is to build deep understanding through:
- 📖 Traditional textbook study (starting with Terence Tao's *Measure Theory*)
- 🧮 Lean 4 formalization of mathematical concepts
- 🔗 Connecting mathematical foundations to AI/ML applications

## Current Focus

### Measure Theory
- **Textbook**: Terence Tao, *An Introduction to Measure Theory* (GSM 126, 2012)
- **Topics**:
  - σ-algebras
  - Lebesgue measure
  - Measurable functions
  - Lebesgue integration
  - Convergence theorems

## Project Structure

```
.
├── lake.lean              # Lake package configuration
├── MathStudies.lean       # Main entry point
├── Mathlib/               # Local library files
│   ├── MeasureTheory.lean # Measure theory formalization
│   └── ...
└── README.md
```

## Setup

### Prerequisites

1. **Install Elan** (Lean version manager):
   ```bash
   curl https://raw.githubusercontent.com/leanprover/elan/master/elan-init.sh -sSf | sh
   ```

2. **Verify installation**:
   ```bash
   lean --version
   lake --version
   ```

### Building

```bash
# Initialize Lean project (first time only)
lake init MathStudies

# Build the project
lake build

# Run Lean REPL
lake build
```

## Learning Resources

- [Mathematics in Lean](https://avigad.github.io/mathematics_in_lean/) - Lean 4 math tutorial
- [Lean 4 Documentation](https://leanprover.github.io/lean4/doc/)
- [Lean Community Discord](https://discord.gg/leanprover)
- [Mathlib4](https://github.com/leanprover-community/mathlib4) - Lean math library

## Progress

- [ ] Lean 4 installation and setup
- [ ] σ-algebra definition in Lean
- [ ] Measure space formalization
- [ ] Lebesgue measure basics
- [ ] Simple measurable functions
- [ ] Convergence theorems

## License

MIT License - See [LICENSE](../LICENSE) for details.

---

**Status**: 🌱 Just getting started with Lean 4 and Measure Theory!

*Last updated: 2026-02-25*
