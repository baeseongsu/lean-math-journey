namespace Tutorials.FPInLean

/-
# 1.5 Datatypes, Patterns and Recursion

inductive defines new data types with constructors.
Pattern matching allows case analysis.
-/

-- Simple inductive type
inductive ArithmeticExpression where
  | number : Nat → ArithmeticExpression
  | add : ArithmeticExpression → ArithmeticExpression → ArithmeticExpression
  | mul : ArithmeticExpression → ArithmeticExpression → ArithmeticExpression

-- Recursive function with pattern matching
def evaluate : ArithmeticExpression → Nat
  | .number n => n
  | .add e1 e2 => evaluate e1 + evaluate e2
  | .mul e1 e2 => evaluate e1 * evaluate e2

-- Testing the evaluator
#eval evaluate (.number 5)
#eval evaluate (.add (.number 1) (.number 2))
#eval evaluate (.mul (.number 3) (.add (.number 1) (.number 2)))

-- Exercise: Add a subtraction constructor and extend evaluate
-- inductive ArithmeticExpression where
--   | number : Nat → ArithmeticExpression
--   | add : ArithmeticExpression → ArithmeticExpression → ArithmeticExpression
--   | sub : sorry  -- Add subtraction here
--   | mul : ArithmeticExpression → ArithmeticExpression → ArithmeticExpression

end Tutorials.FPInLean
