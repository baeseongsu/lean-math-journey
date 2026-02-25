namespace Tutorials.FPInLean

/-
# 1.1 Evaluating Expressions

Based on: Functional Programming in Lean
https://lean-lang.org/functional_programming_in_lean/Getting-to-Know-Lean/Evaluating-Expressions/

Licensed under CC BY 4.0

Lean is an interactive system.
You can ask it to evaluate expressions using #eval.
-/

-- ============================================================================
-- Basic Arithmetic
-- ============================================================================

#eval 1 + 2
-- Expected: 3

#eval 5 * 5
-- Expected: 25

-- Operator precedence: multiplication before addition
#eval 1 + 2 * 5
-- Expected: 11 (not 15)

-- ============================================================================
-- Function Application
-- ============================================================================

-- In Lean, function arguments are separated by spaces (not commas!)
-- Instead of: String.append("Hello, ", "Lean!")
-- We write:
#eval String.append "Hello, " "Lean!"
-- Expected: "Hello, Lean!"

-- Parentheses are needed when arguments are computed via other function calls
#eval String.append "great " (String.append "oak " "tree")
-- Expected: "great oak tree"

-- ============================================================================
-- Conditionals
-- ============================================================================

-- if ... then ... else
-- Note: Lean has only conditional expressions, not conditional statements
#eval String.append "it is " (if 1 > 2 then "yes" else "no")
-- Expected: "it is no"

-- ============================================================================
-- Exercises
-- ============================================================================
-- Work out the values by hand, then check with Lean

-- Exercise 1: 42 + 19
-- Expected: 61
#eval 42 + 19

-- Exercise 2: String.append "A" (String.append "B" "C")
-- Expected: "ABC"
#eval String.append "A" (String.append "B" "C")

-- Exercise 3: String.append (String.append "A" "B") "C"
-- Expected: "ABC"
#eval String.append (String.append "A" "B") "C"

-- Exercise 4: if 3 == 3 then 5 else 7
-- Expected: 5
#eval if 3 == 3 then 5 else 7

-- Exercise 5: if 3 == 4 then "equal" else "not equal"
-- Expected: "not equal"
#eval if 3 == 4 then "equal" else "not equal"

end Tutorials.FPInLean
