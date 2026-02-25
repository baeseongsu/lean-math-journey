namespace Tutorials.FPInLean

/-
# Chapter 1: Getting to Know Lean

Based on: Functional Programming in Lean
https://leanprover.github.io/functional_programming_in_lean/

## Sections:
- 1.1 Evaluating Expressions
- 1.2 Types
- 1.3 Functions and Definitions
- 1.4 Structures
- 1.5 Datatypes, Patterns and Recursion
- 1.6 Polymorphism
- 1.7 Additional Conveniences
-/

-- ============================================================================
-- 1.1 Evaluating Expressions
-- ============================================================================

#eval 1 + 2
#eval 5 * 5
#eval 42 / 6
#eval 123456789 * 987654321

-- String operations
#eval "Hello, " ++ "world!"

-- ============================================================================
-- 1.2 Types
-- ============================================================================

-- Every Lean expression has a type
#check 1
#check "Hello"

-- Types can be explicitly specified
def x : Nat := 5
#check x

-- Type errors (uncomment to see error)
-- def bad : Nat := "not a number"

-- ============================================================================
-- 1.3 Functions and Definitions
-- ============================================================================

def square (x : Nat) : Nat :=
  x * x

#eval square 5

def add (x y : Nat) : Nat :=
  x + y

#eval add 3 5

-- Function with multiple arguments
def greet (name : String) (title : String) : String :=
  "Hello, " ++ title ++ " " ++ name ++ "!"

#eval greet "Alice" "Dr."

-- ============================================================================
-- 1.4 Structures
-- ============================================================================

structure Point where
  x : Float
  y : Float
deriving Repr

def origin : Point :=
  { x := 0.0, y := 0.0 }

#eval origin

def addPoints (p1 p2 : Point) : Point :=
  { x := p1.x + p2.x, y := p1.y + p2.y }

#eval addPoints { x := 1.0, y := 2.0 } { x := 3.0, y := 4.0 }

-- ============================================================================
-- 1.5 Datatypes, Patterns and Recursion
-- ============================================================================

inductive ArithmeticExpression where
  | number : Nat → ArithmeticExpression
  | add : ArithmeticExpression → ArithmeticExpression → ArithmeticExpression
  | mul : ArithmeticExpression → ArithmeticExpression → ArithmeticExpression

def evaluate : ArithmeticExpression → Nat
  | .number n => n
  | .add e1 e2 => evaluate e1 + evaluate e2
  | .mul e1 e2 => evaluate e1 * evaluate e2

#eval evaluate (.add (.number 1) (.number 2))
#eval evaluate (.mul (.number 3) (.add (.number 1) (.number 2)))

-- ============================================================================
-- 1.6 Polymorphism
-- ============================================================================

def identity {α : Type} (x : α) : α :=
  x

#eval identity 5
#eval identity "hello"

def fst {α β : Type} (pair : α × β) : α :=
  pair.fst

#eval fst (5, "hello")

-- ============================================================================
-- Exercises
-- ============================================================================

-- Exercise 1: Define a function that returns the length of a string
-- def stringLength (s : String) : Nat :=
--   sorry

-- Exercise 2: Define a function that returns the larger of two numbers
-- def max (n m : Nat) : Nat :=
--   sorry

-- Exercise 3: Define an ArithmeticExpression that computes (3 + 4) * 5
-- def myExpression : ArithmeticExpression :=
--   sorry

-- Exercise 4: Evaluate your expression
-- #eval evaluate myExpression

end Tutorials.FPInLean
