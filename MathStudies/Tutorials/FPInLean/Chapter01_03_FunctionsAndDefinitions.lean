namespace Tutorials.FPInLean

/-
# 1.3 Functions and Definitions

Based on: Functional Programming in Lean
https://lean-lang.org/functional_programming_in_lean/Getting-to-Know-Lean/Functions-and-Definitions/

Licensed under CC BY 4.0

Lean uses the `def` keyword to define functions and values.
-/

-- ============================================================================
-- 1. Basic Definitions
-- ============================================================================

-- Use `:=` for definitions (use `=` for equality proofs)
def hello := "Hello"

-- Explicit type annotations are clearer
def lean : String := "Lean"

#eval String.append hello (String.append " " lean)
-- Result: "Hello Lean"

-- ============================================================================
-- 2. Function Definitions
-- ============================================================================

-- Simple function
def add1 (n : Nat) : Nat :=
  n + 1

#eval add1 7
-- Result: 8

-- Multiple arguments are separated by spaces
def maximum (n : Nat) (k : Nat) : Nat :=
  if n < k then
    k
  else n

#eval maximum 5 10
-- Result: 10

#eval maximum 15 10
-- Result: 15

-- String function example
def spaceBetween (before : String) (after : String) : String :=
  String.append before (String.append " " after)

#eval spaceBetween "Hello" "Lean"
-- Result: "Hello Lean"

-- ============================================================================
-- 3. More Function Examples
-- ============================================================================

-- Square function
def square (n : Nat) : Nat :=
  n * n

#eval square 5
-- Result: 25

#eval square 10
-- Result: 100

-- Cube function
def cube (n : Nat) : Nat :=
  n * n * n

#eval cube 3
-- Result: 27

-- Repeat string twice
def repeatTwice (s : String) : String :=
  String.append s s

#eval repeatTwice "Hi"
-- Result: "HiHi"

-- ============================================================================
-- 4. Checking Function Types
-- ============================================================================

-- Using #check on function name shows signature
#check add1
-- add1 (n : Nat) : Nat

-- Wrap in parentheses to see function type
#check (add1)
-- add1 : Nat → Nat

#check (maximum)
-- maximum : Nat → Nat → Nat

#check (spaceBetween)
-- spaceBetween : String → String → String

-- ============================================================================
-- 5. Currying in Practice
-- ============================================================================

-- You can partially apply functions
def add5 (n : Nat) : Nat :=
  n + 5

-- add5 waits for its argument
#check (add5)
-- add5 : Nat → Nat

-- ============================================================================
-- Exercises
-- ============================================================================

-- Exercise 1: Average of two numbers
def average (x : Nat) (y : Nat) : Nat :=
  (x + y) / 2

#eval average 10 20
-- Expected: 15

-- Exercise 2: Repeat string three times
def repeatThree (s : String) : String :=
  String.append s (String.append s s)

#eval repeatThree "Hi"
-- Expected: "HiHiHi"

-- Exercise 3: joinStringsWith function (challenge!)
-- Places first argument between second and third arguments
-- Example: joinStringsWith ", " "one" "and another" = "one, and another"
def joinStringsWith (sep : String) (s1 : String) (s2 : String) : String :=
  String.append s1 (String.append sep s2)

#eval joinStringsWith ", " "one" "and another"
-- Expected: "one, and another"

-- Exercise 4: Rectangular prism volume
-- volume (length) (width) (height)
def volume (length : Nat) (width : Nat) (height : Nat) : Nat :=
  length * width * height

#eval volume 3 4 5
-- Expected: 60

end Tutorials.FPInLean
