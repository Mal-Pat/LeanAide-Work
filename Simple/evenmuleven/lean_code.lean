import Mathlib

theorem int.even.mul_right : ∀ (p q : ℤ), Even p → Even (p * q) :=
    by
    intro p q a
    simp_all only [Even.mul_right]