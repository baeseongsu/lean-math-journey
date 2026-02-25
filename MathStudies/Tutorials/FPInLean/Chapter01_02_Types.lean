namespace Tutorials.FPInLean

/-
# 1.2 Types

Every Lean expression has a type.
Use #check to see the type of an expression.
-/

-- Checking types
#check 1        -- Nat (natural number)
#check "Hello"  -- String

-- Variables with explicit types
def x : Nat := 5
#check x

def greeting : String := "Hello"
#check greeting

-- Functions have types too
#check Nat.succ      -- Nat → Nat
#check String.append  -- String → String → String

-- Exercise: Check the type of these expressions
-- #check 1 + 2
-- #check (1, 2)

end Tutorials.FPInLean
