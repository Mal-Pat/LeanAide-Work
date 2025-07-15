import Mathlib
universe u v w u_1 u_2 u_3 u₁ u₂ u₃
set_option maxHeartbeats 10000000
set_option linter.unreachableTactic false
open Nat
  abbrev even_mul_odd.prop : Prop :=
    ∀ (m n : ℤ), Even m → Odd n → Even (m * n)
  theorem even_mul_odd : ∀ (m n : ℤ), Even m → Odd n → Even (m * n) :=
    by
    intro m n a_7839637416819228768 a_8414561948067158322
    trace "Automation tactics found for Even (m * n), closing goal"
    simp_all only [Even.mul_right]