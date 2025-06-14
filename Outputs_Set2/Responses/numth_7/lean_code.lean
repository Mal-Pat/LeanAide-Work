import Mathlib

  def Int.dvd : ℤ → ℤ → Prop := fun x y => ∃ k : ℤ, y = x * k
  abbrev Int.dvd_add.prop : Prop :=
    ∀ {a b c : ℤ}, a ≠ 0 → a ∣ b → a ∣ c → a ∣ b + c
  theorem Int.dvd_add : ∀ {a b c : ℤ}, a ≠ 0 → a ∣ b → a ∣ c → a ∣ b + c :=
    by
    intro b c a_1 a_2 a_3
    simp_all only [ne_eq]
    sorry