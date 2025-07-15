import Mathlib
universe u v w u_1 u_2 u_3 u₁ u₂ u₃
set_option maxHeartbeats 10000000
set_option linter.unreachableTactic false
open Nat
theorem exists_nat_prime_gt_ten : ∃ m > 10, Nat.Prime m :=
    by
    trace "Automation tactics found for ∃ m > 10, Nat.Prime m, closing goal"
    simp_all only [gt_iff_lt]
    apply Nat.exists_infinite_primes