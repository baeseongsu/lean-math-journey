namespace Tutorials.FPInLean

/-
# 1.2 Types

Based on: Functional Programming in Lean
https://lean-lang.org/functional_programming_in_lean/Getting-to-Know-Lean/Types/

Licensed under CC BY 4.0

Every Lean expression must have a type.
Types classify values and prevent mistakes.
-/

-- ============================================================================
-- 1. Checking Types with #check
-- ============================================================================

-- Use #check to see the type of an expression

#check 42           -- 42 : Nat (natural numbers)
#check -5           -- -5 : Int (integers, includes negatives)
#check "hello"      -- "hello" : String
#check true         -- true : Bool

-- Functions also have types
#check Nat.succ     -- Nat.succ (n : Nat) : Nat
#check String.append -- String.append (s : String) (t : String) : String

-- ============================================================================
-- 2. Explicit Type Annotations
-- ============================================================================

-- Specify type using parentheses with colon: (expression : Type)

#eval (1 + 2 : Nat)    -- 3
#eval (1 - 2 : Nat)    -- 0 (Nat has no negatives!)
#eval (1 - 2 : Int)    -- -1

-- ============================================================================
-- 3. Nat vs Int (Important!)
-- ============================================================================

-- Nat (natural numbers): 0, 1, 2, ... (no negatives, arbitrary precision)
#eval (5 - 3 : Nat)    -- 2
#eval (3 - 5 : Nat)    -- 0 (clamps to 0 when negative)

-- Int (integers): ..., -2, -1, 0, 1, 2, ... (includes negatives)
#eval (3 - 5 : Int)    -- -2

-- ============================================================================
-- 4. Type Errors
-- ============================================================================

-- Uncomment to see the error:
-- #check String.append ["hello", " "] "world"
-- Error: Application type mismatch
-- The argument ["hello", " "] has type List String
-- but is expected to have type String

-- #eval 1 + "hello"
-- Error: cannot add Nat and String

end Tutorials.FPInLean
