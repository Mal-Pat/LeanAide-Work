import Mathlib

def Int.dvd : ℤ → ℤ → Prop := fun x y => ∃ k : ℤ, y = x * k
abbrev Int.sum_consecutive_three_divisible_by_three.prop : Prop :=
  ∀ (n : ℤ), 3 ∣ n + (n + 1) + (n + 2)
theorem Int.sum_consecutive_three_divisible_by_three : ∀ (n : ℤ), 3 ∣ n + (n + 1) + (n + 2) := by (omega)
