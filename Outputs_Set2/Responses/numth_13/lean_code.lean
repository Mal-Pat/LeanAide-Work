import Mathlib

def dvd (x y : ℤ) : Prop :=
  ∃ k : ℤ, y = x * k
abbrev Int.sum_three_consecutive_div_three.prop : Prop :=
  ∀ (n : ℤ), 3 ∣ n + (n + 1) + (n + 2)
theorem Int.sum_three_consecutive_div_three : ∀ (n : ℤ), 3 ∣ n + (n + 1) + (n + 2) := by
