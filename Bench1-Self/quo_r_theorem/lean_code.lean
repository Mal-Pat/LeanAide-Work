import Mathlib
universe u v w u_1 u_2 u_3 u₁ u₂ u₃
set_option maxHeartbeats 10000000
set_option linter.unreachableTactic false
open Nat
theorem nat.exists_mul_add_mod_eq : ∀ (a b : ℕ), ∃ (q : ℕ), b = a * q + b % a :=
    by
    intro a b
    exact Auto.Nat.mod_par rfl