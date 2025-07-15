import Mathlib
universe u v w u_1 u_2 u_3 u₁ u₂ u₃
set_option maxHeartbeats 10000000
set_option linter.unreachableTactic false
open Nat
  def divisible_by_5_iff_last_digit_0_or_5.prop : Prop :=
    ∀ (n : ℕ), n % 10 = 0 ∨ n % 10 = 5 → n % 5 = 0
  theorem divisible_by_5_iff_last_digit_0_or_5 : ∀ (n : ℕ), n % 10 = 0 ∨ n % 10 = 5 → n % 5 = 0 :=
    by
    intro n a_13397840144843358689
    trace
      "Automation Tactics first\n  | (simp?; done)\n  | hammer {aesopPremises := 5, autoPremises := 0} for goal: n % 5 = 0"
    cases a_13397840144843358689 with
    | inl h => sorry
    | inr h_1 => sorry
    trace
      "Finished Automation Tactics first\n  | (simp?; done)\n  | hammer {aesopPremises := 5, autoPremises := 0} for goal: n % 5 = 0"