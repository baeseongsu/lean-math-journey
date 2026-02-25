namespace Tutorials.FPInLean

/-
# 1.4 Structures

structure defines new data types with named fields.
-/

-- Defining a structure
structure Point where
  x : Float
  y : Float
deriving Repr

-- Creating a structure instance
def origin : Point :=
  { x := 0.0, y := 0.0 }

#eval origin

-- Function that uses structures
def addPoints (p1 p2 : Point) : Point :=
  { x := p1.x + p2.x, y := p1.y + p2.y }

#eval addPoints { x := 1.0, y := 2.0 } { x := 3.0, y := 4.0 }

-- Exercise: Define a structure for a 3D point
-- structure Point3D where
--   x : Float
--   y := sorry
--   z := sorry

end Tutorials.FPInLean
