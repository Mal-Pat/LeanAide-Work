import Mathlib

theorem even_add_odd_is_odd : ∀ {p q : ℕ}, Even p → Odd q → Odd (p + q) :=
    by
    intro p q a a
    apply Even.add_odd
    · simp_all only
    · simp_all only