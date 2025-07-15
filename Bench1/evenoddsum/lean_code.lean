import Mathlib
universe u v w u_1 u_2 u_3 u₁ u₂ u₃
set_option maxHeartbeats 10000000
set_option linter.unreachableTactic false
open Nat
  abbrev even_add_odd_eq_odd.prop : Prop :=
    ∀ {a b : ℤ}, Even a → Odd b → Odd (a + b)
  theorem even_add_odd_eq_odd : ∀ {a b : ℤ}, Even a → Odd b → Odd (a + b) :=
    by
    intro a b a_7891882474177813356 a_7180657709111703546
    trace "Automation tactics found for Odd (a + b), closing goal"
    apply Even.add_odd
    · simp_all only
    · simp_all only