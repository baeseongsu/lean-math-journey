namespace Tutorials.FPInLean

/-
# 1.4 Structures

Based on: Functional Programming in Lean
https://lean-lang.org/functional_programming_in_lean/Getting-to-Know-Lean/Structures/

Licensed under CC BY 4.0

Structures bundle related data into a single unit.
Similar to structs in C/Rust, records in C#.
-/

-- ============================================================================
-- 1. Float Type
-- ============================================================================

-- Lean's floating-point number type is Float
#check 1.2           -- 1.2 : Float
#check -454.2123215  -- -454.2123215 : Float
#check 0.0           -- 0.0 : Float

-- Without decimal point, type is Nat by default
#check 0             -- 0 : Nat

-- Explicit type annotation for Float
#check (0 : Float)   -- 0 : Float

-- ============================================================================
-- 2. Defining Structures
-- ============================================================================

-- Define a Point structure with x and y coordinates
structure Point where
  x : Float
  y : Float
  deriving Repr

-- Create a structure value using curly braces
def origin : Point := { x := 0.0, y := 0.0 }

#eval origin
-- Result: { x := 0.000000, y := 0.000000 }

-- ============================================================================
-- 3. Accessing Fields with Dot Notation
-- ============================================================================

-- Access individual fields using dot notation
#eval origin.x  -- 0.000000
#eval origin.y  -- 0.000000

-- ============================================================================
-- 4. Functions with Structures
-- ============================================================================

-- Add two points by adding their coordinates
def addPoints (p1 : Point) (p2 : Point) : Point :=
  { x := p1.x + p2.x, y := p1.y + p2.y }

#eval addPoints { x := 1.5, y := 32 } { x := -8, y := 0.2 }
-- Result: { x := -6.500000, y := 32.200000 }

-- Distance between two points (Pythagorean theorem)
def distance (p1 : Point) (p2 : Point) : Float :=
  Float.sqrt (((p2.x - p1.x) ^ 2.0) + ((p2.y - p1.y) ^ 2.0))

#eval distance { x := 1.0, y := 2.0 } { x := 5.0, y := -1.0 }
-- Result: 5.000000

-- ============================================================================
-- 5. Multiple Structures with Same Field Names
-- ============================================================================

-- Different structures can have fields with the same names
structure Point3D where
  x : Float
  y : Float
  z : Float
  deriving Repr

def origin3D : Point3D := { x := 0.0, y := 0.0, z := 0.0 }

-- Type annotation is required when the type cannot be inferred
-- Uncomment to see the error:
-- #check { x := 0.0, y := 0.0 }
-- Error: invalid {...} notation, expected type is not known

-- Provide type annotation outside curly braces
#check ({ x := 0.0, y := 0.0 } : Point)
-- Result: { x := 0.0, y := 0.0 } : Point

-- Or provide type annotation inside curly braces (Lean style)
#check { x := 0.0, y := 0.0 : Point}
-- Result: { x := 0.0, y := 0.0 } : Point

-- ============================================================================
-- 6. Updating Structures with `with`
-- ============================================================================

-- Replace the x field with 0 while keeping y the same
def zeroX (p : Point) : Point :=
  { p with x := 0 }

def fourAndThree : Point := { x := 4.3, y := 3.4 }

#eval fourAndThree
-- Result: { x := 4.300000, y := 3.400000 }

#eval zeroX fourAndThree
-- Result: { x := 0.000000, y := 3.400000 }

#eval fourAndThree
-- Result: { x := 4.300000, y := 3.400000 }
-- NOTE: Original value is unchanged (functional programming!)

-- ============================================================================
-- 7. Behind the Scenes: Constructors and Accessors
-- ============================================================================

-- Each structure has a constructor (default: S.mk)
#check (Point.mk)
-- Point.mk : Float → Float → Point

-- Constructor can be called directly (not recommended style)
#check Point.mk 1.5 2.8
-- Result: { x := 1.5, y := 2.8 } : Point

-- Accessor functions are generated for each field
#check (Point.x)
-- Point.x : Point → Float

#check (Point.y)
-- Point.y : Point → Float

-- Dot notation is converted to accessor calls
#eval origin.x          -- 0.000000
#eval Point.x origin    -- 0.000000 (same result)

-- ============================================================================
-- 8. Dot Notation with Functions
-- ============================================================================

-- Dot notation works with any function, not just structure fields
#eval "one string".append " and another"
-- Result: "one string and another"

-- Define a function in the Point namespace
def Point.modifyBoth (f : Float → Float) (p : Point) : Point :=
  { x := f p.x, y := f p.y }

-- Can use dot notation even though Point is not the first argument
#eval fourAndThree.modifyBoth Float.floor
-- Result: { x := 4.000000, y := 3.000000 }

-- ============================================================================
-- Quiz Solutions
-- ============================================================================

-- Quiz 1: Person structure
structure Person where
  name : String
  age : Nat
  deriving Repr

-- Quiz 2: Create a Person
def p1 : Person := { name := "철수", age := 17 }

#eval p1
-- Result: { name := "철수", age := 17 }

-- Quiz 3: isAdult function
def isAdult (p : Person) : Bool :=
  if p.age >= 18 then true else false

#eval isAdult p1  -- false (철수는 17살)
#eval isAdult { name := "영희", age := 19 }  -- true

-- Quiz 4: birthday function
def birthday (p : Person) : Person :=
  { p with age := p.age + 1 }

#eval birthday p1
-- Result: { name := "철수", age := 18 }

#eval p1
-- Result: { name := "철수", age := 17 } (원본 unchanged!)

-- Quiz 5: Point3D and distance3D
-- (Point3D already defined above in section 5)

def distance3D (p1 : Point3D) (p2 : Point3D) : Float :=
  Float.sqrt (((p2.x - p1.x) ^ 2.0) + ((p2.y - p1.y) ^ 2.0) + ((p2.z - p1.z) ^ 2.0))

-- Test: distance between (0,0,0) and (3,4,0) should be 5 (3-4-5 triangle in xy-plane)
#eval distance3D origin3D { x := 3.0, y := 4.0, z := 0.0 }
-- Result: 5.000000

-- Test: distance between (0,0,0) and (1,2,2) should be 3
#eval distance3D origin3D { x := 1.0, y := 2.0, z := 2.0 }
-- Result: 3.000000 (sqrt(1 + 4 + 4) = sqrt(9) = 3)

end Tutorials.FPInLean
