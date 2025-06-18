import Mathlib

  def isOdd (n : ℤ) : Prop :=
    ∃ k : ℤ, n = 2 * k + 1
  theorem odd_mul_odd : ∀ {m n : ℤ}, Odd m → Odd n → Odd (m * n) :=
    by
    intro m n
    exact fun a a_1 => Odd.mul a a_1