namespace MathStudies.Basics

/-
# Lean 4 기초: 타입 시스템

Lean은 강력한 타입 시스템을 가집니다:
- 기본 타입: Nat, Int, String, Bool
- 타입 표기: (x : T)는 "x의 타입은 T"
- #check로 타입 확인
-/

-- 1. 기본 타입들
#check 42           -- Nat (자연수)
#check (-5)         -- Int (정수)
#check 3.14         -- Float (부동소수점)
#check "hello"      -- String
#check true         -- Bool

-- 2. 변수와 타입
def myNumber : Nat := 10
def myName : String := "Lean"
def isFun : Bool := true

#check myNumber    -- Nat
#eval myNumber     -- 10

-- 3. 함수와 타입
-- (인자 : 타입) ... : 반환타입
def add (a : Nat) (b : Nat) : Nat :=
  a + b

#check add        -- Nat → Nat → Nat
#eval add 3 5     -- 8

-- 4. 타입 변환
def natToInt (n : Nat) : Int :=
  Int.ofNat n

#eval natToInt 5   -- 5 (Int 타입)

def intToNat (i : Int) : Nat :=
  Int.toNat i

-- 주의: 음수는 0이 됨
#eval intToNat (-5)  -- 0

-- 5. Bool 타입과 논리 연산
def andTable (b1 : Bool) (b2 : Bool) : Bool :=
  b1 && b2

#eval andTable true true   -- true
#eval andTable true false  -- false

def orTable (b1 : Bool) (b2 : Bool) : Bool :=
  b1 || b2

#eval orTable false false   -- false
#eval orTable true false    -- true

def notTable (b : Bool) : Bool :=
  !b

#eval notTable true   -- false

-- 연습문제
-- 1. 두 자연수를 받아서 큰 것을 반환하는 함수 작성
-- def max (a : Nat) (b : Nat) : Nat :=
--   sorry

-- 2. 문자열을 받아서 길이를 반환하는 함수 작성
-- def stringLength (s : String) : Nat :=
--   sorry

end MathStudies.Basics
