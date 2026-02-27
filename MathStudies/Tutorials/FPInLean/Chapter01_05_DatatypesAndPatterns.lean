namespace Tutorials.FPInLean

/-!
# 1.5 Datatypes and Patterns

Based on: Functional Programming in Lean
https://lean-lang.org/functional_programming_in_lean/Getting-to-Know-Lean/Datatypes-and-Patterns/

Licensed under CC BY 4.0

Inductive datatypes allow us to define:
1. Sum types (choices): A OR B
2. Recursive types: types that can contain themselves

Pattern matching is how we consume these datatypes.
-/

-- ============================================================================
-- 1. Inductive Datatypes Basics
-- ============================================================================

-- Bool is an inductive datatype with two constructors
-- (This is already defined in Lean's standard library)
-- inductive Bool where
--   | false : Bool
--   | true : Bool

-- Nat is also an inductive datatype
-- (Already defined in standard library)
-- inductive Nat where
--   | zero : Nat
--   | succ (n : Nat) : Nat

-- Understanding Nat representation:
#eval Nat.zero                                      -- 0
#eval Nat.succ Nat.zero                             -- 1
#eval Nat.succ (Nat.succ Nat.zero)                  -- 2
#eval Nat.succ (Nat.succ (Nat.succ Nat.zero))       -- 3

-- ============================================================================
-- 2. Pattern Matching Basics
-- ============================================================================

-- isZero: checks if n is zero
def isZero (n : Nat) : Bool :=
  match n with
  | Nat.zero => true
  | Nat.succ k => false

#eval isZero 0     -- true
#eval isZero 1     -- false
#eval isZero 100   -- false

-- pred: finds the predecessor of a Nat
-- (0's predecessor is 0, since Nat has no negatives)
def pred (n : Nat) : Nat :=
  match n with
  | Nat.zero => Nat.zero
  | Nat.succ k => k

#eval pred 5     -- 4
#eval pred 1     -- 0
#eval pred 0     -- 0

-- ============================================================================
-- 3. Pattern Matching with Structures
-- ============================================================================

structure Point3D where
  x : Float
  y : Float
  z : Float
  deriving Repr

-- Using pattern matching on structures (though p.z is simpler!)
def depth (p : Point3D) : Float :=
  match p with
  | { x := h, y := w, z := d } => d

-- ============================================================================
-- 4. Recursive Functions
-- ============================================================================

-- even: checks if n is even using recursion
def even (n : Nat) : Bool :=
  match n with
  | Nat.zero => true           -- 0 is even (base case)
  | Nat.succ k => not (even k) -- succ(n) is even iff n is odd

#eval even 0     -- true
#eval even 1     -- false
#eval even 2     -- true
#eval even 3     -- false
#eval even 100   -- true

-- plus: addition using structural recursion
def plus (n : Nat) (k : Nat) : Nat :=
  match k with
  | Nat.zero => n                      -- n + 0 = n
  | Nat.succ k' => Nat.succ (plus n k') -- n + (k+1) = (n+k) + 1

#eval plus 3 2    -- 5
#eval plus 0 0    -- 0
#eval plus 10 5   -- 15

-- times: multiplication using plus
def times (n : Nat) (k : Nat) : Nat :=
  match k with
  | Nat.zero => Nat.zero              -- n * 0 = 0
  | Nat.succ k' => plus n (times n k') -- n * (k+1) = n + (n*k)

#eval times 3 4   -- 12
#eval times 5 0   -- 0
#eval times 7 8   -- 56

-- minus: subtraction using pred
def minus (n : Nat) (k : Nat) : Nat :=
  match k with
  | Nat.zero => n                      -- n - 0 = n
  | Nat.succ k' => pred (minus n k')   -- n - (k+1) = pred(n-k)

#eval minus 10 3  -- 7
#eval minus 5 5   -- 0
#eval minus 3 5   -- 0 (clamps to 0)

-- ============================================================================
-- 5. Quiz Solutions
-- ============================================================================

-- Quiz 1: isOne - checks if n equals 1
def isOne (n : Nat) : Bool :=
  match n with
  | Nat.zero => false
  | Nat.succ Nat.zero => true
  | Nat.succ k => false

#eval isOne 0     -- false
#eval isOne 1     -- true
#eval isOne 2     -- false
#eval isOne 100   -- false

-- Quiz 2: and - logical conjunction
def and (a : Bool) (b : Bool) : Bool :=
  match a with
  | false => false
  | true => b

#eval and true true    -- true
#eval and true false   -- false
#eval and false true   -- false
#eval and false false  -- false

-- Quiz 3: isTwoOrMore - checks if n >= 2
def isTwoOrMore (n : Nat) : Bool :=
  match n with
  | Nat.zero => false
  | Nat.succ Nat.zero => false
  | Nat.succ k => true

#eval isTwoOrMore 0     -- false
#eval isTwoOrMore 1     -- false
#eval isTwoOrMore 2     -- true
#eval isTwoOrMore 100   -- true

-- Quiz 4: addOne - adds 1 to n (recursive version)
def addOne (n : Nat) : Nat :=
  match n with
  | Nat.zero => Nat.succ Nat.zero
  | Nat.succ k => Nat.succ (addOne k)

#eval addOne 0     -- 1
#eval addOne 5     -- 6
#eval addOne 100   -- 101

-- Quiz 5: fib - Fibonacci sequence
def fib (n : Nat) : Nat :=
  match n with
  | Nat.zero => 0                                    -- fib 0 = 0
  | Nat.succ Nat.zero => 1                          -- fib 1 = 1
  | Nat.succ (Nat.succ k) => (fib Nat.succ k) + (fib k)  -- fib (k+2) = fib(k+1) + fib(k)

#eval fib 0    -- 0
#eval fib 1    -- 1
#eval fib 2    -- 1
#eval fib 3    -- 2
#eval fib 4    -- 3
#eval fib 5    -- 5
#eval fib 6    -- 8
#eval fib 10   -- 55

-- ============================================================================
-- 6. Key Concepts Summary
-- ============================================================================

-- 1. Inductive Datatype: Type defined by constructors
--    - Bool: false | true
--    - Nat: zero | succ(n)

-- 2. Pattern Matching: Case analysis on constructors
--    match expr with
--    | Constructor1 => result1
--    | Constructor2 => result2

-- 3. Variable Binding in Patterns:
--    | Nat.succ k => ... -- k is the Nat inside succ

-- 4. Recursive Functions:
--    - Base case: What to do with zero/simple case
--    - Recursive case: Transform result for smaller input

-- 5. Structural Recursion:
--    - Lean guarantees termination
--    - Recursive call must be on a strictly smaller value

end Tutorials.FPInLean
