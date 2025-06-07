import Mathlib

def dvd (x y : ℤ) : Prop :=
  ∃ k : ℤ, y = x * k
abbrev Int.dvd_add.prop : Prop :=
  ∀ {a b c : ℤ}, a ≠ 0 → a ∣ b → a ∣ c → a ∣ b + c
theorem Int.dvd_add : ∀ {a b c : ℤ}, a ≠ 0 → a ∣ b → a ∣ c → a ∣ b + c := by
