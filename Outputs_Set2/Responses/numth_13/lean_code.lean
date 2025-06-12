import Mathlib

  def Int.dvd : ℤ → ℤ → Prop := fun x y => ∃ k : ℤ, y = x * k
  abbrev Int.sum_three_consecutive_div_Three.prop : Prop :=
    ∀ (n : ℤ), 3 ∣ n + (n + 1) + (n + 2)
  theorem Int.sum_three_consecutive_div_Three : ∀ (n : ℤ), 3 ∣ n + (n + 1) + (n + 2) := by (omega)