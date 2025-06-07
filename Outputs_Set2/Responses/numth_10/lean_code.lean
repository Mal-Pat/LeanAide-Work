import Mathlib

def dvd (x y : ℤ) : Prop :=
  ∃ k : ℤ, y = x * k
abbrev Int.dvd_abs_of_dvd_and_abs_le.prop : Prop :=
  ∀ {a b : ℤ}, a ∣ b → b ≠ 0 → Int.natAbs a ≤ Int.natAbs b
theorem Int.dvd_abs_of_dvd_and_abs_le : ∀ {a b : ℤ}, a ∣ b → b ≠ 0 → Int.natAbs a ≤ Int.natAbs b := by
