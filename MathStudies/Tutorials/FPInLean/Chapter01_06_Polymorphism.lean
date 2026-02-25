namespace Tutorials.FPInLean

/-
# 1.6 Polymorphism

Functions can work with multiple types using type variables.
-/

-- Polymorphic identity function
def identity {α : Type} (x : α) : α :=
  x

#eval identity 5        -- works with Nat
#eval identity "hello"  -- works with String

-- Polymorphic pair access
def fst {α β : Type} (pair : α × β) : α :=
  pair.fst

#eval fst (5, "hello")

-- Polymorphic constant function
def const {α β : Type} (x : α) (y : β) : α :=
  x

#eval const 5 "hello"  -- returns 5
#eval const "hi" 10    -- returns "hi"

-- Exercise: Define a polymorphic second function
-- def second {α β : Type} (pair : α × β) : β :=
--   sorry

end Tutorials.FPInLean
