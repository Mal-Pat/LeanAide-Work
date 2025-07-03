import Mathlib

theorem exists_nat_sq_eq_nine : ∃ (n : ℕ), n ^ 2 = 9 := by exact (exists_mul_self' 9).mpr rfl