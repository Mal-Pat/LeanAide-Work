import Mathlib
universe u v w u_1 u_2 u_3 u₁ u₂ u₃
set_option maxHeartbeats 10000000
set_option linter.unreachableTactic false
open Nat
theorem even_add_odd_is_odd : ∀ {a b : ℕ}, Even a → Odd b → Odd (a + b) :=
    by
    intro a b a_10887380439804174381 a_1389251645961937567
    trace "Automation tactics found for Odd (a + b), closing goal"
    apply Even.add_odd
    · simp_all only
    · simp_all only