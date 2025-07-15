import Mathlib
universe u v w u_1 u_2 u_3 u₁ u₂ u₃
set_option maxHeartbeats 10000000
set_option linter.unreachableTactic false
open Nat
theorem nat_not_prime_of_mod_six_eq_zero_or_four : ∀ (n : ℕ), n % 6 = 0 ∨ n % 6 = 4 → ¬Nat.Prime n :=
    by
    intro n a_7972533484200855580
    if condition_9289661020530513051 : n % 6 = 0 then
      
      have assert_1537035095498445343 : ∃ (k : ℕ), n = 6 * k :=
        by
        trace
          "Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: ∃ k, n = 6 * k"
        cases a_7972533484200855580 with
        | inl h => sorry
        | inr h_1 => sorry
        trace
          "Finished Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: ∃ k, n = 6 * k"
      let ⟨k, assert_10519291151578733484⟩ := assert_1537035095498445343
      have assert_5745091890089227079 : 6 ∣ n :=
        by
        trace
          "Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: 6 ∣ n"
        subst assert_10519291151578733484
        simp_all only [OfNat.zero_ne_ofNat, or_false, mul_mod_right, mul_eq_mul_left_iff, OfNat.ofNat_ne_zero,
          exists_eq', dvd_mul_right]
        trace
          "Finished Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: 6 ∣ n"
      have assert_5838180501934387430 : ¬Nat.Prime n :=
        by
        trace
          "Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: ¬Nat.Prime n"
        subst assert_10519291151578733484
        simp_all only [OfNat.zero_ne_ofNat, or_false, mul_mod_right, mul_eq_mul_left_iff, OfNat.ofNat_ne_zero,
          exists_eq', dvd_mul_right]
        apply Aesop.BuiltinRules.not_intro
        intro a
        sorry
        trace
          "Finished Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: ¬Nat.Prime n"
      assumption
    else
      if condition_17583331121733368941 : n % 6 = 4 then
        
        have assert_9149467101898812630 : ∃ (k : ℕ), n = 6 * k + 4 :=
          by
          trace
            "Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: ∃ k, n = 6 * k + 4"
          simp_all only [false_or, OfNat.ofNat_ne_zero, not_false_eq_true]
          sorry
          trace
            "Finished Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: ∃ k, n = 6 * k + 4"
        let ⟨k, assert_2413158800140915744⟩ := assert_9149467101898812630
        have assert_7701181072511214036 : n = 2 * (3 * k + 2) := by
          first
          | linarith
          | ring
          | norm_num
          | simp
          | omega
          | rfl
        exact Mathlib.Meta.NormNum.not_prime_mul_of_ble 2 (3 * k + 2) n (id (Eq.symm assert_7701181072511214036)) rfl
        rfl
      else
        trace
          "Automation Tactics first\n  | (simp?; done)\n  | hammer {aesopPremises := 5, autoPremises := 0} for goal: ¬Nat.Prime n"
        simp_all only [false_or, OfNat.ofNat_ne_zero, not_false_eq_true]
        apply Aesop.BuiltinRules.not_intro
        intro a
        sorry
        trace
          "Finished Automation Tactics first\n  | (simp?; done)\n  | hammer {aesopPremises := 5, autoPremises := 0} for goal: ¬Nat.Prime n"
    done