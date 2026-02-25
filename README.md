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

#### Progress: Chapter 1 - Getting to Know Lean

| Section | Topics | Key Concepts | Status | File |
|---------|--------|--------------|--------|------|
| 1.1 [Evaluating Expressions](https://lean-lang.org/functional_programming_in_lean/Getting-to-Know-Lean/Evaluating-Expressions/) | `#eval`, operators, function application, conditionals | Operator precedence, currying basics | ✅ Complete | `Chapter01_01_EvaluatingExpressions.lean` |
| 1.2 [Types](https://lean-lang.org/functional_programming_in_lean/Getting-to-Know-Lean/Types/) | `#check`, type annotations, Nat vs Int | Type inference, type errors | ✅ Complete | `Chapter01_02_Types.lean` |
| 1.3 [Functions and Definitions](https://lean-lang.org/functional_programming_in_lean/Getting-to-Know-Lean/Functions-and-Definitions/) | `def`, function syntax, currying | `:=` vs `=`, function types | 🔄 In Progress | `Chapter01_03_FunctionsAndDefinitions.lean` |
| 1.4 Structures | `structure`, named fields | | ⏳ Upcoming | `Chapter01_04_Structures.lean` |
| 1.5 Datatypes and Patterns | `inductive`, pattern matching | | ⏳ Upcoming | `Chapter01_05_DatatypesAndPatterns.lean` |
| 1.6 Polymorphism | Generic types | | ⏳ Upcoming | `Chapter01_06_Polymorphism.lean` |
| 1.7 Additional Conveniences | `let`, `@`, parentheses | | ⏳ Upcoming | `Chapter01_07_AdditionalConveniences.lean` |

#### Key Concepts So Far

- **`#eval`**: Evaluate expressions and show results
- **`#check`**: Check types without evaluation
- **`Nat` vs `Int`**: Nat has no negatives (clamps to 0), Int supports negatives
- **`:=` vs `=`**: `:=` is for definition, `=` is for equality
- **Function application**: Use spaces to separate arguments (`f x y`)
- **Currying**: All functions actually take just one argument

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
