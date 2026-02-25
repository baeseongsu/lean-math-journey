# lean-math-journey

Learning mathematics through **Lean 4** formalization - starting with **Measure Theory**.

## Overview

This repository tracks my journey learning mathematics by formalizing concepts and proofs in Lean 4. The goal is to build deep understanding through:
- 📖 Traditional textbook study (starting with Terence Tao's *Measure Theory*)
- 🧮 Lean 4 formalization of mathematical concepts
- 🔗 Connecting mathematical foundations to AI/ML applications

## 📚 Learning Path

### Phase 1: Lean 4 Basics (Current)
> Mastering Lean 4 syntax and proof tactics following the official tutorial

**Source**: [Functional Programming in Lean](https://lean-lang.org/functional_programming_in_lean/) by David Thrane Christiansen
**License**: Creative Commons Attribution 4.0 International (CC BY 4.0)

| Chapter | Section | File | Topics | Exercises |
|---------|---------|------|--------|-----------|
| 1 | 1.1 Evaluating Expressions | `MathStudies/Tutorials/FPInLean/Chapter01_01_EvaluatingExpressions.lean` | #eval, operators, function application, conditionals | 5 problems |
| 1 | 1.2 Types | `MathStudies/Tutorials/FPInLean/Chapter01_02_Types.lean` | Type checking, #check | (upcoming) |
| 1 | 1.3 Functions and Definitions | `MathStudies/Tutorials/FPInLean/Chapter01_03_FunctionsAndDefinitions.lean` | def, function syntax | (upcoming) |
| 1 | 1.4 Structures | `MathStudies/Tutorials/FPInLean/Chapter01_04_Structures.lean` | structure, named fields | (upcoming) |
| 1 | 1.5 Datatypes and Patterns | `MathStudies/Tutorials/FPInLean/Chapter01_05_DatatypesAndPatterns.lean` | inductive, pattern matching | (upcoming) |
| 1 | 1.6 Polymorphism | `MathStudies/Tutorials/FPInLean/Chapter01_06_Polymorphism.lean` | Generic types | (upcoming) |
| 1 | 1.7 Additional Conveniences | `MathStudies/Tutorials/FPInLean/Chapter01_07_AdditionalConveniences.lean` | let, @, parentheses | (upcoming) |
| 3 | `MathStudies/Basics/Functions.lean` | Higher-order functions, List operations | 2 problems |
| 4 | `MathStudies/Basics/Logic.lean` | Propositions, logical operators (∧, ∨, →) | 2 problems |
| 5 | `MathStudies/Basics/Proofs.lean` | Theorems, tactics, induction | 3 problems |

**How to study**: Read each file, run `#eval` examples, then solve exercises at the end.

```bash
# Build and see results
cd Lean
lake build MathStudies.Basics.HelloWorld
```

### Phase 2: Measure Theory (Upcoming)
> Formalizing Tao's Measure Theory

- Branch: `book/tao-measure-theory-ch1`
- Topics: σ-algebras, Lebesgue measure, integration

---

## Current Focus

### Phase 1: Lean 4 Basics
- ✅ Setup complete (Lean 4.28.0, Lake 5.0.0)
- ✅ Basic modules created
- 🔄 Working through HelloWorld exercises

### Phase 2: Measure Theory (Planned)
- **Textbook**: Terence Tao, *An Introduction to Measure Theory* (GSM 126, 2012)
- **Topics**:
  - σ-algebras
  - Lebesgue measure
  - Measurable functions
  - Lebesgue integration
  - Convergence theorems

## Project Structure

```
Lean/
├── lakefile.toml              # Lake package configuration
├── MathStudies.lean           # Main library entry point
├── MathStudies/
│   ├── Basics/                # 📚 Lean 4 learning modules
│   │   ├── HelloWorld.lean    # 1. Basic syntax & functions
│   │   ├── Types.lean         # 2. Type system
│   │   ├── Functions.lean     # 3. Functions & Lists
│   │   ├── Logic.lean         # 4. Logic & propositions
│   │   └── Proofs.lean        # 5. Theorems & proofs
│   └── (Future: MeasureTheory/)
├── Main.lean                  # Executable entry point
└── README.md                  # This file
```

## Setup

### Prerequisites

1. **Install Elan** (Lean version manager):
   ```bash
   curl https://raw.githubusercontent.com/leanprover/elan/master/elan-init.sh -sSf | sh
   ```

2. **Verify installation**:
   ```bash
   lean --version   # Should show Lean 4.28.0
   lake --version   # Should show Lake 5.0.0
   ```

### Building

```bash
cd Lean

# Build entire project
lake build

# Build specific module
lake build MathStudies.Basics.HelloWorld

# Run examples (shown in build output)
```

## Learning Resources

- [Mathematics in Lean](https://avigad.github.io/mathematics_in_lean/) - Comprehensive Lean 4 math tutorial
- [Lean 4 Documentation](https://leanprover.github.io/lean4/doc/)
- [Lean Community Discord](https://discord.gg/leanprover) - Active community
- [Mathlib4](https://github.com/leanprover-community/mathlib4) - Lean math library

## Progress

### Phase 1: Lean 4 Basics
- [x] Lean 4 installation and setup
- [x] Basic learning modules created
- [ ] HelloWorld exercises completed
- [ ] All Basics modules completed

### Phase 2: Measure Theory
- [ ] σ-algebra definition in Lean
- [ ] Measure space formalization
- [ ] Lebesgue measure basics
- [ ] Measurable functions
- [ ] Integration basics
- [ ] Convergence theorems

## License

MIT License - See [LICENSE](../LICENSE) for details.

---

**Status**: 🌱 Just getting started with Lean 4 and Measure Theory!

*Last updated: 2026-02-25*
