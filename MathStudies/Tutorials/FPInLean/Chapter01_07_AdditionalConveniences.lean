namespace Tutorials.FPInLean

/-
# 1.7 Additional Conveniences

Lean provides convenient syntax for common patterns.
-/

-- Using let for local definitions
def complexCalc (x : Nat) : Nat :=
  let y := x + 1
  let z := y * 2
  z - 1

#eval complexCalc 5

-- Using @ to provide implicit arguments explicitly
def implicitExample {α : Type} (x : α) : α :=
  x

-- These are equivalent:
#eval implicitExample 5
#eval @implicitExample Nat 5

-- Using parentheses for grouping
#eval 1 + (2 * 3)  -- 7
#eval (1 + 2) * 3  -- 9

-- Exercise: Rewrite complexCalc without using let
-- def complexCalcNoLet (x : Nat) : Nat :=
--   sorry

end Tutorials.FPInLean
