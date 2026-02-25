namespace MathStudies.Basics

/-
# Lean 4 기초: 간단한 증명

Lean에서 정리(theorem)와 정의(definition)을 증명하는 방법을 배웁니다:
- theorem/lemma 선언
- by 전략 사용
- 간단한 대수적 증명
-/

-- 1. 첫 번째 정리 (theorem)
theorem add_one (n : Nat) : n + 1 = n.succ := by
  rfl  -- reflexivity: 같은 것은 같다

-- #eval add_one 5   -- theorem은 #eval로 실행할 수 없음

-- 2. 덧셈의 교환법칙 (간단 버전)
theorem add_comm_two (a b : Nat) : a + b = b + a := by
  -- Nat.add_comm은 Lean 표준 라이브러리에 있음
  rw [Nat.add_comm]

-- 3. 곱셈과 덧셈의 분배법칙
theorem distributive (a b c : Nat) : a * (b + c) = a * b + a * c := by
  rw [Nat.mul_add]

-- 4. 복합적인 증명 (여러 단계)
-- calc 표기법 사용 (단계별 계산 보여주기)
theorem compound_calc (x : Nat) : (x + 1) * 2 = x * 2 + 2 := by
  calc (x + 1) * 2 = x * 2 + 1 * 2 := by rw [Nat.add_mul]
              _ = x * 2 + 2     := by rw [Nat.one_mul]

-- 5. by tactics 없이 직접 증명 작성
theorem direct_proof : 2 + 2 = 4 := by
  decide  -- Lean이 계산으로 확인

-- 6. 가정을 사용한 증명
theorem add_eq_of_eq (h : a = b) (c : Nat) : a + c = b + c := by
  rw [h]

-- 7. 간단한 부등식 증명
theorem le_refl (n : Nat) : n ≤ n := by
  apply Nat.le_refl

theorem le_trans {a b c : Nat} (h1 : a ≤ b) (h2 : b ≤ c) : a ≤ c := by
  apply Nat.le_trans
  assumption
  assumption

-- 8. induction (귀납법) 맛보기
theorem zero_add (n : Nat) : 0 + n = n := by
  induction n with
  | zero =>
    -- 기저 케이스: 0 + 0 = 0
    rfl
  | succ n ih =>
    -- 귀납 케이스: 0 + (n+1) = n+1, 가정: 0 + n = n
    rw [Nat.add_succ]
    rw [ih]  -- 증명 완료

-- 연습문제
-- 1. 1 + 1 = 2 증명
-- theorem one_plus_one : 1 + 1 = 2 := by
--   sorry

-- 2. a + a = 2 * a 증명
-- theorem double_add (a : Nat) : a + a = 2 * a := by
--   sorry

-- 3. (a + b) * c = a * c + b * c 증명
-- theorem mul_add_rev (a b c : Nat) : (a + b) * c = a * c + b * c := by
--   sorry

end MathStudies.Basics
