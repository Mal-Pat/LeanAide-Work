import Mathlib

def dvd (x y : ℤ) : Prop :=
  ∃ k : ℤ, y = x * k
abbrev Int.dvd_of_dvd_of_dvd_trans.prop : Prop :=
  ∀ (n : ℤ), 4 ∣ n → 2 ∣ n
theorem Int.dvd_of_dvd_of_dvd_trans : ∀ (n : ℤ), 4 ∣ n → 2 ∣ n := by
