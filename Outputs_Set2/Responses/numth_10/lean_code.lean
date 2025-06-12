import Mathlib

  def Int.dvd : ℤ → ℤ → Prop := fun x y => ∃ k : ℤ, y = x * k
  abbrev Int.dvd_of_abs_le_of_dvd.prop : Prop :=
    ∀ {a b : ℤ}, a ∣ b → b ≠ 0 → Int.natAbs a ≤ Int.natAbs b
  theorem Int.dvd_of_abs_le_of_dvd : ∀ {a b : ℤ}, a ∣ b → b ≠ 0 → Int.natAbs a ≤ Int.natAbs b :=
    by
    intro b a_1 a_2
    simp_all only [ne_eq]
    sorry