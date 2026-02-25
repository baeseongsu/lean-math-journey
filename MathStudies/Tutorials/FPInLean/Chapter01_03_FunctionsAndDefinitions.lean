namespace Tutorials.FPInLean

/-
# 1.3 Functions and Definitions

def defines new functions or constants.
-/

-- Simple function definition
def square (x : Nat) : Nat :=
  x * x

#eval square 5

-- Function with multiple arguments
def add (x y : Nat) : Nat :=
  x + y

#eval add 3 5

-- Using type annotations for clarity
def multiply (n : Nat) (m : Nat) : Nat :=
  n * m

#eval multiply 6 7

-- Functions can call other functions
def squareOfSquare (x : Nat) : Nat :=
  square (square x)

#eval squareOfSquare 2  -- (2^2)^2 = 16

-- Exercise: Define a function that cubes a number
-- def cube (x : Nat) : Nat :=
--   sorry

-- #eval cube 3  -- Should be 27

end Tutorials.FPInLean
