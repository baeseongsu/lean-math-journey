namespace Tutorials.FPInLean

/-
# 1.1 Evaluating Expressions

Lean is an interactive system.
You can ask it to evaluate expressions using #eval.
-/

-- Simple arithmetic
#eval 1 + 2
#eval 5 * 5

-- Division of natural numbers (truncates)
#eval 42 / 6

-- Large numbers (Lean supports arbitrary precision)
#eval 123456789 * 987654321

-- String concatenation
#eval "Hello, " ++ "world!"

-- Exercise: Try evaluating some expressions
-- #eval 10 * 10 + 5
-- #eval "Lean" ++ " " ++ "4"

end Tutorials.FPInLean
