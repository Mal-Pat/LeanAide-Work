import Mathlib
universe u v w u_1 u_2 u_3 u₁ u₂ u₃
set_option maxHeartbeats 10000000
set_option linter.unreachableTactic false
open Nat
theorem div_three_sum_consecutive_nat : ∀ (n : ℤ), 3 ∣ n + (n + 1) + (n + 2) :=
    by
    intro n
    have assert_16504161470097087058 : n + (n + 1) + (n + 2) = 3 * (n + 1) :=
      by
      trace "Automation Tactics hammer [] for goal: n + (n + 1) + (n + 2) = 3 * (n + 1)"
      sorry
    (expose_names; exact Dvd.intro (n_1 + 1) (id (Eq.symm assert_16504161470097087058)))
    trace "Automation Tactics hammer for goal: 3 ∣ n + (n + 1) + (n + 2)"
    sorry