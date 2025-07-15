import Mathlib
universe u v w u_1 u_2 u_3 u₁ u₂ u₃
set_option maxHeartbeats 10000000
set_option linter.unreachableTactic false
open Nat
theorem even_lt_20_sum_of_two_primes :
      ∀ (n : ℕ), n > 2 ∧ n < 20 ∧ n % 2 = 0 → ∃ (p : ℕ) (q : ℕ), Nat.Prime p ∧ Nat.Prime q ∧ n = p + q :=
    by
    intro n a_11137150003361095080
    trace "Automation Tactics hammer for goal: ∃ p q, Nat.Prime p ∧ Nat.Prime q ∧ n = p + q"
    simp_all only [gt_iff_lt, exists_and_left]
    obtain ⟨left, right⟩ := a_11137150003361095080
    obtain ⟨left_1, right⟩ := right
    sorry
    trace "Finished Automation Tactics hammer for goal: ∃ p q, Nat.Prime p ∧ Nat.Prime q ∧ n = p + q"