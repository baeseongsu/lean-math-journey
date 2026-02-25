namespace Tutorials.FPInLean

/-
# 1.3 Functions and Definitions

Based on: Functional Programming in Lean
https://lean-lang.org/functional_programming_in_lean/Getting-to-Know-Lean/Functions-and-Definitions/

Licensed under CC BY 4.0

Lean에서는 def 키워드로 함수와 정의를 만듭니다.
-/

-- ============================================================================
-- 1. 기본 정의
-- ============================================================================

-- := 로 정의합니다 (=는 동등성 증명에 사용)
def hello := "Hello"

-- 타입을 명시하면 더 명확함
def lean : String := "Lean"

#eval String.append hello (String.append " " lean)
-- 결과: "Hello Lean"

-- ============================================================================
-- 2. 함수 정의
-- ============================================================================

-- 기본 함수
def add1 (n : Nat) : Nat :=
  n + 1

#eval add1 7
-- 결과: 8

-- 여러 인자는 공백으로 구분
def maximum (n : Nat) (k : Nat) : Nat :=
  if n < k then
    k
  else n

#eval maximum 5 10
-- 결과: 10

#eval maximum 15 10
-- 결과: 15

-- 문자열 함수 예시
def spaceBetween (before : String) (after : String) : String :=
  String.append before (String.append " " after)

#eval spaceBetween "Hello" "Lean"
-- 결과: "Hello Lean"

-- ============================================================================
-- 3. 더 많은 함수 예시
-- ============================================================================

-- 제곱 함수
def square (n : Nat) : Nat :=
  n * n

#eval square 5
-- 결과: 25

#eval square 10
-- 결과: 100

-- 세 제곱
def cube (n : Nat) : Nat :=
  n * n * n

#eval cube 3
-- 결과: 27

-- 문자열 반복
def repeatTwice (s : String) : String :=
  String.append s s

#eval repeatTwice "Hi"
-- 결과: "HiHi"

-- ============================================================================
-- 4. 함수 타입 확인
-- ============================================================================

-- #check로 함수 이름을 확인하면 signature가 나옴
#check add1
-- add1 (n : Nat) : Nat

-- 괄호로 감싸면 함수 타입이 나옴
#check (add1)
-- add1 : Nat → Nat

#check (maximum)
-- maximum : Nat → Nat → Nat

#check (spaceBetween)
-- spaceBetween : String → String → String

-- ============================================================================
-- 5. 커링 (Currying) 실습
-- ============================================================================

-- 함수에 인자를 일부만 적용해도 됨
def add5 (n : Nat) : Nat :=
  n + 5

-- add5를 먼저 적용하면 "나중에 5를 더할 함수"가 됨
#check (add5)
-- add5 : Nat → Nat

-- ============================================================================
-- 연습문제 (도전과제 포함)
-- ============================================================================

-- 문제 1: 두 숫자의 평균을 구하는 함수 작성
def average (x : Nat) (y : Nat) : Nat :=
  (x + y) / 2

#eval average 10 20
-- 예상 결과: 15

-- 문제 2: 문자열을 3번 반복하는 함수 작성
def repeatThree (s : String) : String :=
  String.append s (String.append s s)

#eval repeatThree "Hi"
-- 예상 결과: "HiHiHi"

-- 문제 3: joinStringsWith 함수 작성 (도전과제!)
-- 첫 번째 인자를 두 번째와 세 번째 인자 사이에 넣음
-- 예: joinStringsWith ", " "one" "and another" = "one, and another"
def joinStringsWith (sep : String) (s1 : String) (s2 : String) : String :=
  String.append s1 (String.append sep s2)

#eval joinStringsWith ", " "one" "and another"
-- 예상 결과: "one, and another"

-- 문제 4: 직육면체 부피 구하기
-- volume (길이) (너비) (높이)
def volume (length : Nat) (width : Nat) (height : Nat) : Nat :=
  length * width * height

#eval volume 3 4 5
-- 예상 결과: 60

end Tutorials.FPInLean
