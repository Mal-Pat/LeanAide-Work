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
  if condition_539958120475410144 : n % 10 = 0 then

    have assert_14624567202372330351 : 10 ∣ n :=
      by
      trace
        "Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: 10 ∣ n"
      cases a_13397840144843358689 with
      | inl h => sorry
      | inr h_1 => sorry
      trace
        "Finished Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: 10 ∣ n"
    have assert_17275661542556916749 : ∀ (k : ℕ), n = 10 * k → n = 10 * k :=
      by
      trace
        "Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: ∀ (k : ℕ), n = 10 * k → n = 10 * k"
      simp only [imp_self, implies_true]
      trace
        "Finished Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: ∀ (k : ℕ), n = 10 * k → n = 10 * k"
    have assert_2084469990120369931 :
      ∀ (k : ℕ), n % 10 = 0 ∨ n % 10 = 5 → n % 10 = 0 → n = 10 * k → n = 5 * (2 * k) :=
      by
      trace
        "Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: ∀ (k : ℕ), n % 10 = 0 ∨ n % 10 = 5 → n % 10 = 0 → n = 10 * k → n = 5 * (2 * k)"
      intro k a a_1 a_2
      subst a_2
      simp_all only [mul_eq_mul_left_iff, OfNat.ofNat_ne_zero, or_false, OfNat.zero_ne_ofNat, dvd_mul_right,
        implies_true, mul_mod_right]
      sorry
      trace
        "Finished Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: ∀ (k : ℕ), n % 10 = 0 ∨ n % 10 = 5 → n % 10 = 0 → n = 10 * k → n = 5 * (2 * k)"
    have assert_14491579695485910030 : ∃ (k : ℕ), n = 10 * k :=
      by
      trace
        "Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: ∃ k, n = 10 * k"
      simp_all only [OfNat.zero_ne_ofNat, or_false, implies_true, forall_const]
      exact assert_14624567202372330351
      trace
        "Finished Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: ∃ k, n = 10 * k"
    let ⟨k, assert_13915564691081828623⟩ := assert_14491579695485910030
    trace
      "Automation Tactics first\n  | (simp?; done)\n  | hammer {aesopPremises := 5, autoPremises := 0} for goal: n % 5 = 0"
    subst assert_13915564691081828623
    simp_all only [OfNat.zero_ne_ofNat, or_false, mul_mod_right, dvd_mul_right, mul_eq_mul_left_iff,
      OfNat.ofNat_ne_zero, implies_true, forall_const, forall_eq']
    trace
      "Finished Automation Tactics first\n  | (simp?; done)\n  | hammer {aesopPremises := 5, autoPremises := 0} for goal: n % 5 = 0"
  else
    if condition_7373442126900311225 : n % 10 = 5 then

      have assert_4532435913572188164 : ∃ (k : ℕ), n = 10 * k + 5 :=
        by
        trace
          "Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: ∃ k, n = 10 * k + 5"
        simp_all only [false_or, OfNat.ofNat_ne_zero, not_false_eq_true]
        sorry
        trace
          "Finished Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: ∃ k, n = 10 * k + 5"
      let ⟨k, assert_1284482720153497458⟩ := assert_4532435913572188164
      have assert_8295422331937614310 : n = 5 * (2 * k + 1) :=
        by
        trace
          "Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: n = 5 * (2 * k + 1)"
        subst assert_1284482720153497458
        simp_all only [OfNat.ofNat_ne_zero, or_true, not_false_eq_true, mul_add_mod_self_left, reduceMod,
          Nat.add_right_cancel_iff, mul_eq_mul_left_iff, or_false, exists_eq']
        sorry
        trace
          "Finished Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: n = 5 * (2 * k + 1)"
      have assert_3276261398144761483 : ∃ (k : ℕ), n = 10 * k + 5 ∧ 5 ∣ n :=
        by
        trace
          "Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: ∃ k, n = 10 * k + 5 ∧ 5 ∣ n"
        subst assert_8295422331937614310
        simp_all only [mul_add_mod_self_left, reduceMod, OfNat.ofNat_ne_zero, or_true, not_false_eq_true,
          Nat.add_right_cancel_iff, mul_eq_mul_left_iff, or_false, exists_eq', Nat.dvd_add_self_right,
          exists_and_right, true_and]
        sorry
        trace
          "Finished Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: ∃ k, n = 10 * k + 5 ∧ 5 ∣ n"
      let ⟨k, assert_11588208384974479407⟩ := assert_3276261398144761483
      trace
        "Automation Tactics first\n  | (simp?; done)\n  | hammer {aesopPremises := 5, autoPremises := 0} for goal: n % 5 = 0"
      subst assert_8295422331937614310
      simp_all only [mul_add_mod_self_left, reduceMod, OfNat.ofNat_ne_zero, or_true, not_false_eq_true,
        Nat.add_right_cancel_iff, mul_eq_mul_left_iff, or_false, exists_eq', Nat.dvd_add_self_right, exists_and_right,
        true_and, dvd_mul_right, and_true, add_mod_right]
      subst assert_1284482720153497458
      sorry
      trace
        "Finished Automation Tactics first\n  | (simp?; done)\n  | hammer {aesopPremises := 5, autoPremises := 0} for goal: n % 5 = 0"
    else
      trace
        "Automation Tactics first\n  | (simp?; done)\n  | hammer {aesopPremises := 5, autoPremises := 0} for goal: n % 5 = 0"
      simp_all only [false_or, OfNat.ofNat_ne_zero, not_false_eq_true]
      sorry
      trace
        "Finished Automation Tactics first\n  | (simp?; done)\n  | hammer {aesopPremises := 5, autoPremises := 0} for goal: n % 5 = 0"
  done
