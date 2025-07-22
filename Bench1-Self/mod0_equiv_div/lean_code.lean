import Mathlib
universe u v w u_1 u_2 u_3 u₁ u₂ u₃
set_option maxHeartbeats 10000000
set_option linter.unreachableTactic false
open Nat
theorem nat_mod_eq_zero_iff_dvd : ∀ (a b : ℕ), b % a = 0 ↔ a ∣ b :=
    by
    intro a b
    trace "Automation tactics found for b % a = 0 ↔ a ∣ b, closing goal"
    apply Iff.intro
    · intro a_1
      apply Nat.dvd_of_mod_eq_zero
      simp_all only
    · intro a_1
      apply Nat.mod_eq_zero_of_dvd
      simp_all only