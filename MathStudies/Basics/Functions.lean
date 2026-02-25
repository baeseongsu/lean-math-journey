namespace MathStudies.Basics

/-
# Lean 4 기초: 함수

함수 정의와 사용법을 배웁니다:
- 여러 방식의 함수 정의
- 람다表达式
- 고계 함수 (map, filter)
-/

-- 1. 표준 함수 정의
def square (n : Nat) : Nat :=
  n * n

#eval square 5    -- 25

-- 2. 여러 인자
def average (a : Nat) (b : Nat) : Nat :=
  (a + b) / 2

#eval average 10 20   -- 15

-- 3. let 바인딩 (중간 계산)
def complexCalc (x : Nat) : Nat :=
  let y := x + 1
  let z := y * 2
  z - 1

#eval complexCalc 5   -- 11
-- 계산: x=5, y=6, z=12, z-1=11

-- 4. 람다 함수 (fun x => ...)
def applyTwice (f : Nat → Nat) (x : Nat) : Nat :=
  f (f x)

#eval applyTwice (fun n => n + 1) 5   -- 7
-- 설명: (5 + 1) + 1 = 7

-- 5. List와 고계 함수
-- List 만들기
#eval [1, 2, 3, 4, 5]      -- [1, 2, 3, 4, 5]

-- List의 첫 번째 요소
#eval List.head! [1, 2, 3]  -- 1

-- List 길이
#eval List.length [1, 2, 3]  -- 3

-- map: 각 요소에 함수 적용
#eval List.map (fun n => n * 2) [1, 2, 3]  -- [2, 4, 6]

-- filter: 조건에 맞는 요소만 남김
def isEven (n : Nat) : Bool :=
  n % 2 == 0

#eval List.filter isEven [1, 2, 3, 4, 5]  -- [2, 4]

-- fold: 리스트를 하나의 값으로 축약
def sumList (lst : List Nat) : Nat :=
  lst.foldl (fun acc n => acc + n) 0

#eval sumList [1, 2, 3, 4, 5]  -- 15

-- 6. 부분 적용 (currying)
def addThree (a : Nat) (b : Nat) (c : Nat) : Nat :=
  a + b + c

-- 모든 인자 전달
#eval addThree 1 2 3   -- 6

-- 부분 적용: 일부 인자만 전달하면 함수 반환
def addOneAndTwo := addThree 1
#eval addOneAndTwo 2 3   -- 6 (1 + 2 + 3)

-- 연습문제
-- 1. List의 모든 요소를 곱하는 함수 작성
-- def productList (lst : List Nat) : Nat :=
--   sorry

-- 2. List에서 홀수만 필터링하는 함수 작성
-- def filterOdds (lst : List Nat) : List Nat :=
--   sorry

end MathStudies.Basics
