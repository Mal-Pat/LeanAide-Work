import Mathlib

def Int.dvd : ℤ → ℤ → Prop := fun x y => ∃ k : ℤ, y = x * k
abbrev Int.dvd_abs_le_self.prop : Prop :=
  ∀ {a b : ℤ}, a ∣ b → b ≠ 0 → |a| ≤ |b|
theorem Int.dvd_abs_le_self : ∀ {a b : ℤ}, a ∣ b → b ≠ 0 → |a| ≤ |b| :=
  by
  intro b a_1 a_2
  simp_all only [ne_eq]
  sorry
