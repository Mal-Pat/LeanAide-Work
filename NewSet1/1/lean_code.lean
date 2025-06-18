import Mathlib

  def is_even (x : ℤ) : Prop :=
    ∃ k : ℤ, x = 2 * k
  def Int.isOdd (x : ℤ) : Prop :=
    ∃ ℓ : ℤ, x = 2 * ℓ + 1
  theorem Int.even_add_odd : ∀ (m n : ℤ), Even m → Odd n → Odd (m + n) := by exact fun m n a a_1 => Even.add_odd a a_1