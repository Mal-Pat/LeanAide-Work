import Mathlib
universe u v w u_1 u_2 u_3 u₁ u₂ u₃
set_option maxHeartbeats 10000000
set_option linter.unreachableTactic false
open Nat
theorem exists_nat_sq_eq_nine : ∃ (n : ℕ), n ^ 2 = 9 := by exact (exists_mul_self' 9).mpr rfl