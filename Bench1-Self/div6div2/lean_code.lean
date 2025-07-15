import Mathlib
universe u v w u_1 u_2 u_3 u₁ u₂ u₃
set_option maxHeartbeats 10000000
set_option linter.unreachableTactic false
open Nat
theorem divisible_by_six_imp_divisible_by_two : ∀ (n : ℕ), 6 ∣ n → 2 ∣ n :=
    by
    intro n a_7483115061731082443
    have assert_1537035095498445343 : ∃ (k : ℕ), n = 6 * k :=
      by
      trace
        "Automation Tactics first\n  | simp?\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: ∃ k, n = 6 * k"
      exact a_7483115061731082443
      trace
        "Finished Automation Tactics first\n  | simp?\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: ∃ k, n = 6 * k"
    let ⟨k, assert_10519291151578733484⟩ := assert_1537035095498445343
    have assert_2577357155704612531 : 6 ∣ n → ∃ (k : ℕ), n = 6 * k ∧ n = 2 * (3 * k) :=
      by
      trace
        "Automation Tactics first\n  | simp?\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: 6 ∣ n → ∃ k, n = 6 * k ∧ n = 2 * (3 * k)"
      intro a
      subst assert_10519291151578733484
      simp_all only [mul_eq_mul_left_iff, OfNat.ofNat_ne_zero, or_false, exists_eq', dvd_mul_right, exists_eq_left']
      sorry
      trace
        "Finished Automation Tactics first\n  | simp?\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: 6 ∣ n → ∃ k, n = 6 * k ∧ n = 2 * (3 * k)"
    have assert_17846023356657540758 : 6 ∣ n → ∃ (k : ℕ), n = 6 * k :=
      by
      trace
        "Automation Tactics first\n  | simp?\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: 6 ∣ n → ∃ k, n = 6 * k"
      intro a
      subst assert_10519291151578733484
      simp_all only [mul_eq_mul_left_iff, OfNat.ofNat_ne_zero, or_false, exists_eq', exists_eq_left', forall_const]
      exact a
      trace
        "Finished Automation Tactics first\n  | simp?\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: 6 ∣ n → ∃ k, n = 6 * k"
    have assert_13859010503934795551 : ∃ (k : ℕ), n = 6 * k → 2 ∣ 6 * k :=
      by
      trace
        "Automation Tactics first\n  | simp?\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: ∃ k, n = 6 * k → 2 ∣ 6 * k"
      subst assert_10519291151578733484
      simp_all only [dvd_mul_right, mul_eq_mul_left_iff, OfNat.ofNat_ne_zero, or_false, exists_eq', exists_eq_left',
        forall_const]
      sorry
      trace
        "Finished Automation Tactics first\n  | simp?\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: ∃ k, n = 6 * k → 2 ∣ 6 * k"
    let ⟨k, assert_10109575230070458260⟩ := assert_13859010503934795551
    have assert_10392182263119662666 : 6 ∣ n → ∃ (k : ℕ), n = 6 * k → 2 ∣ n :=
      by
      trace
        "Automation Tactics first\n  | simp?\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: 6 ∣ n → ∃ k, n = 6 * k → 2 ∣ n"
      intro a
      subst assert_10519291151578733484
      simp_all only [mul_eq_mul_left_iff, OfNat.ofNat_ne_zero, or_false, exists_eq', exists_eq_left', forall_const]
      trace
        "Finished Automation Tactics first\n  | simp?\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: 6 ∣ n → ∃ k, n = 6 * k → 2 ∣ n"
    have : 6 ∣ n → 2 ∣ n :=
      by
      trace
        "Automation Tactics first\n  | simp?\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: 6 ∣ n → 2 ∣ n"
      intro a
      subst assert_10519291151578733484
      simp_all only [mul_eq_mul_left_iff, OfNat.ofNat_ne_zero, or_false, exists_eq', exists_eq_left', forall_const,
        implies_true, dvd_mul_right]
      trace
        "Finished Automation Tactics first\n  | simp?\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: 6 ∣ n → 2 ∣ n"
    (expose_names; exact h a_7483115061731082443)