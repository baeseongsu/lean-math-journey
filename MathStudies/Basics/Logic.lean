namespace MathStudies.Basics

/-
# Lean 4 기초: 논리와 명제

Lean은 증명 보조기(proof assistant)입니다:
- 명제(proposition)는 타입으로 표현
- 증명(proof)는 그 타입의 값(값)
- P ∧ Q는 "P 그리고 Q"
- P → Q는 "P이면 Q"
-/

-- 1. 명제와 진리값
variable (P Q : Prop)  -- P와 Q는 명제(Proposition)

-- 논리 연산
#check P ∧ Q    -- P and Q (그리고)
#check P ∨ Q    -- P or Q (또는)
#check P → Q    -- P implies Q (이면)
#check ¬P       -- not P (아니다)

-- 2. 간단한 명제 증명
example : True := True.intro  -- True는 항상 참

-- example : False := by        -- False는 증명 불가능 (주석 처리)
--   contradiction

-- 3. "그리고"(∧) 다루기
example : True ∧ True :=
  have h1 : True := True.intro
  have h2 : True := True.intro
  And.intro h1 h2

-- 더 간단하게
example : True ∧ True :=
  ⟨True.intro, True.intro⟩

-- 4. "이면"(→) 다루기
-- P → Q는 "P가 참이면 Q도 참"
example : True → True :=
  fun (_ : True) => True.intro

-- 5. 구체적인 명제 증명
def isPositive (n : Nat) : Prop :=
  n > 0

-- "5는 양수이다"를 증명
example : isPositive 5 := by
  dsimp [isPositive]
  -- 5 = 0 + 1 + 1 + 1 + 1 + 1 이므로 양수
  apply Nat.succ_pos

-- 6. 존재 quantifier (∃)
-- "어떤 자연수 n이 존재해서 n > 3"
example : ∃ n : Nat, n > 3 := by
  exists 4
  -- 4 > 3은 Lean이 자동으로 확인

-- 7. 보편 quantifier (∀)
-- "모든 자연수 n에 대해 n + 0 = n"
example : ∀ (n : Nat), n + 0 = n := by
  intro n
  rw [Nat.add_zero]

-- 연습문제
-- 1. True ∧ True ∧ True 증명해보기
-- example : True ∧ True ∧ True :=
--   sorry

-- 2. 자신만의 명제 정의하고 증명해보기
-- def myProposition : Prop :=
--   True

-- example : myProposition :=
--   sorry

end MathStudies.Basics
