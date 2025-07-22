import Mathlib
universe u v w u_1 u_2 u_3 u₁ u₂ u₃
set_option maxHeartbeats 10000000
set_option linter.unreachableTactic false
open Nat
theorem exists_nat_mul_of_dvd_nat : ∀ {a b : ℕ}, (∃ (k : ℕ), b = a * k) ↔ a ∣ b :=
    by
    intro a b
    trace "Automation tactics found for (∃ k, b = a * k) ↔ a ∣ b, closing goal"
    rfl