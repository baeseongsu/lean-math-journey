namespace MathStudies.Basics

/-
# Lean 4 기초: Hello World

이 파일에서는 Lean 4의 가장 기초적인 문법을 배웁니다:
- 간단한 계산
- 정의(definition) 작성
- #eval로 결과 확인
-/

-- 1. 가장 간단한 계산
#eval 1 + 1      -- 결과: 2
#eval 2 * 3      -- 결과: 6
#eval 10 / 3     -- 결과: 3 (정수 나눗셈)

-- 2. 첫 번째 정의
def hello : String := "Hello, Lean!"

-- 정의 사용
#eval hello      -- 결과: "Hello, Lean!"

-- 3. 함수 정의
def addOne (n : Nat) : Nat :=
  n + 1

-- 함수 사용
#eval addOne 5    -- 결과: 6
#eval addOne 0    -- 결과: 1

-- 4. 여러 인자를 가진 함수
def greet (name : String) : String :=
  "Hello, " ++ name ++ "!"

#eval greet "Alice"  -- 결과: "Hello, Alice!"

-- 5. 조건문
def absoluteValue (n : Int) : Int :=
  if n < 0 then -n else n

#eval absoluteValue 5    -- 결과: 5
#eval absoluteValue (-5)  -- 결과: 5

-- 6. 간단한 재귀 함수
def factorial : Nat → Nat
  | 0 => 1
  | n + 1 => (n + 1) * factorial n

#eval factorial 0   -- 결과: 1
#eval factorial 5   -- 결과: 120

-- 연습문제: 자신만의 함수 만들어보기
-- def double (n : Nat) : Nat :=
--   sorry  -- sorry는 "아직 안 함"을 의미

end MathStudies.Basics
