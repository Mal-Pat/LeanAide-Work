import Mathlib
universe u v w u_1 u_2 u_3 u₁ u₂ u₃
set_option maxHeartbeats 10000000
set_option linter.unreachableTactic false
open Nat
theorem not_prime_of_mod_eq_zero_or_four : ∀ {n : ℕ}, n % 6 = 0 ∨ n % 6 = 4 → ¬Nat.Prime n :=
    by
    intro n a_7972533484200855580
    if condition_9289661020530513051 : n % 6 = 0 then
      
      have assert_1537035095498445343 : ∃ (k : ℕ), n = 6 * k :=
        by
        trace
          "Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: ∃ k, n = 6 * k"
        simp_all only [OfNat.zero_ne_ofNat, or_false]
        sorry
        trace
          "Finished Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: ∃ k, n = 6 * k"
      let ⟨k, assert_10519291151578733484⟩ := assert_1537035095498445343
      have assert_1537035095498445343 : ∃ (k : ℕ), n = 6 * k :=
        by
        trace
          "Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: ∃ k, n = 6 * k"
        subst assert_10519291151578733484
        simp_all only [OfNat.zero_ne_ofNat, or_false, mul_mod_right, mul_eq_mul_left_iff, OfNat.ofNat_ne_zero,
          exists_eq']
        trace
          "Finished Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: ∃ k, n = 6 * k"
      let ⟨k, assert_10519291151578733484⟩ := assert_1537035095498445343
      have : ∃ (k : ℕ), n = 6 * k → ¬Nat.Prime n :=
        by
        trace
          "Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: ∃ k, n = 6 * k → ¬Nat.Prime n"
        rename_i assert_10519291151578733484_1
        subst assert_10519291151578733484
        simp_all only [mul_mod_right, OfNat.zero_ne_ofNat, or_false, mul_eq_mul_left_iff, OfNat.ofNat_ne_zero,
          exists_eq']
        subst assert_10519291151578733484_1
        sorry
        trace
          "Finished Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: ∃ k, n = 6 * k → ¬Nat.Prime n"
      trace
        "Automation Tactics first\n  | (simp?; done)\n  | hammer {aesopPremises := 5, autoPremises := 0} for goal: ¬Nat.Prime n"
      repeat (sorry)
      trace
        "Finished Automation Tactics first\n  | (simp?; done)\n  | hammer {aesopPremises := 5, autoPremises := 0} for goal: ¬Nat.Prime n"
    else
      if condition_17583331121733368941 : n % 6 = 4 then
        
        have assert_9149467101898812630 : ∃ (k : ℕ), n = 6 * k + 4 :=
          by
          trace
            "Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: ∃ k, n = 6 * k + 4"
          simp_all only [OfNat.ofNat_ne_zero, or_true, not_false_eq_true]
          sorry
          trace
            "Finished Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: ∃ k, n = 6 * k + 4"
        let ⟨k, assert_2413158800140915744⟩ := assert_9149467101898812630
        have assert_7701181072511214036 : n = 2 * (3 * k + 2) :=
          by
          trace
            "Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: n = 2 * (3 * k + 2)"
          subst assert_2413158800140915744
          simp_all only [OfNat.ofNat_ne_zero, or_true, not_false_eq_true, mul_add_mod_self_left, reduceMod,
            Nat.add_right_cancel_iff, mul_eq_mul_left_iff, or_false, exists_eq']
          sorry
          trace
            "Finished Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: n = 2 * (3 * k + 2)"
        exact Mathlib.Meta.NormNum.not_prime_mul_of_ble 2 (3 * k + 2) n (id (Eq.symm assert_7701181072511214036)) rfl
        rfl
      else
        trace
          "Automation Tactics first\n  | (simp?; done)\n  | hammer {aesopPremises := 5, autoPremises := 0} for goal: ¬Nat.Prime n"
        simp_all only [or_self]
        trace
          "Finished Automation Tactics first\n  | (simp?; done)\n  | hammer {aesopPremises := 5, autoPremises := 0} for goal: ¬Nat.Prime n"
    done