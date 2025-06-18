import Mathlib

theorem Int.endsWith02468.divisibleByTwo : ∀ (n : ℤ), (∃ (d : Fin 5), n % 10 = (↑(↑d : ℕ) : ℤ) * 2) → 2 ∣ n :=
    by
    match c_2947399976204211955 : the last digit of an integer n with
    have : ∀ (n : ℤ), n % 10 = 0 ∨ n % 10 = 2 ∨ n % 10 = 4 ∨ n % 10 = 6 ∨ n % 10 = 8 → 2 ∣ n := by sorry
    intro n a
    obtain ⟨w, h⟩ := a
    (omega)