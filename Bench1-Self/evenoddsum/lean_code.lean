import Mathlib
universe u v w u_1 u_2 u_3 u₁ u₂ u₃
set_option maxHeartbeats 10000000
set_option linter.unreachableTactic false
open Nat
theorem even_add_odd_is_odd : ∀ (a b : ℤ), Even a → Odd b → Odd (a + b) :=
    by
    intro a b a_10238549144699919265 a_305898449825563179
    trace "Automation tactics found for Odd (a + b), closing goal"
    apply Even.add_odd
    · simp_all only
    · simp_all only