import Mathlib

def Int.dvd : ℤ → ℤ → Prop := fun x y => ∃ k : ℤ, y = x * k
abbrev dvd_two_of_dvd_four.prop : Prop :=
  ∀ (n : ℤ), 4 ∣ n → 2 ∣ n
theorem dvd_two_of_dvd_four : ∀ (n : ℤ), 4 ∣ n → 2 ∣ n :=
  by
  intro a
  (omega)
