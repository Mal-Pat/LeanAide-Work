import Mathlib
universe u v w u_1 u_2 u_3 u₁ u₂ u₃
set_option maxHeartbeats 10000000
set_option linter.unreachableTactic false
open Nat
theorem odd_dvd_even_div_even : ∀ {a b : ℤ}, Odd a → Even b → a ∣ b → Even (b / a) :=
    by
    intro a b a_3545152501514269127 a_555218174640713104 a_13300696230021461262
    have assert_16549026473693675702 : ∃ (k : ℤ), b = 2 * k :=
      by
      trace
        "Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: ∃ k, b = 2 * k"
      sorry
      trace
        "Finished Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: ∃ k, b = 2 * k"
    let ⟨k, assert_10323897926786676384⟩ := assert_16549026473693675702
    have assert_11485629743710248627 : ∃ (k : ℤ), b = 2 * k ∧ a ∣ 2 * k :=
      by
      trace
        "Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: ∃ k, b = 2 * k ∧ a ∣ 2 * k"
      subst assert_10323897926786676384
      simp_all only [even_two, Even.mul_right, mul_eq_mul_left_iff, OfNat.ofNat_ne_zero, or_false, exists_eq',
        exists_eq_left']
      trace
        "Finished Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: ∃ k, b = 2 * k ∧ a ∣ 2 * k"
    let ⟨k, assert_7223418644602455472⟩ := assert_11485629743710248627
    have assert_13254764109269902689 : ¬a ∣ 2 :=
      by
      trace
        "Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: ¬a ∣ 2"
      subst assert_10323897926786676384
      simp_all only [even_two, Even.mul_right, mul_eq_mul_left_iff, OfNat.ofNat_ne_zero, or_false, exists_eq',
        exists_eq_left']
      obtain ⟨left, right⟩ := assert_7223418644602455472
      subst left
      apply Aesop.BuiltinRules.not_intro
      intro a_1
      sorry
      trace
        "Finished Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: ¬a ∣ 2"
    have assert_7268139922401973922 : ∃ (k : ℤ), b = 2 * k ∧ a ∣ k :=
      by
      trace
        "Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: ∃ k, b = 2 * k ∧ a ∣ k"
      subst assert_10323897926786676384
      simp_all only [even_two, Even.mul_right, mul_eq_mul_left_iff, OfNat.ofNat_ne_zero, or_false, exists_eq',
        exists_eq_left']
      obtain ⟨left, right⟩ := assert_7223418644602455472
      subst left
      sorry
      trace
        "Finished Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: ∃ k, b = 2 * k ∧ a ∣ k"
    let ⟨k, assert_18053303933989213829⟩ := assert_7268139922401973922
    have assert_12640157831737559146 : ∃ (k : ℤ) (m : ℤ), b = 2 * k ∧ k = m * a :=
      by
      trace
        "Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: ∃ k m, b = 2 * k ∧ k = m * a"
      subst assert_10323897926786676384
      simp_all only [even_two, Even.mul_right, mul_eq_mul_left_iff, OfNat.ofNat_ne_zero, or_false, exists_eq',
        exists_eq_left', and_true, exists_and_left]
      subst assert_18053303933989213829
      obtain ⟨left, right⟩ := assert_7223418644602455472
      subst left
      sorry
      trace
        "Finished Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: ∃ k m, b = 2 * k ∧ k = m * a"
    let ⟨k, assert_14108576092789783882⟩ := assert_12640157831737559146
    let ⟨m, assert_3811062796762907684⟩ := assert_14108576092789783882
    have assert_3501251311705466182 : ∃ (k : ℤ) (m : ℤ), b = 2 * k ∧ k = m * a → b / a = 2 * k / a := by
      first
      | linarith
      | ring
      | norm_num
      | simp
      | omega
      | rfl
    have assert_7749201249928516334 : b = 2 * k → k = m * a → 2 * k / a = 2 * (k / a) := by
      first
      | linarith
      | ring
      | norm_num
      | simp
      | omega
      | rfl
    have assert_9193836921193769014 : b = 2 * k → k = m * a → 2 * (k / a) = 2 * m := by
      first
      | linarith
      | ring
      | norm_num
      | simp
      | omega
      | rfl
    have : Even (b / a) :=
      by
      trace
        "Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: Even (b / a)"
      subst assert_10323897926786676384
      simp_all only [even_two, Even.mul_right, mul_eq_mul_left_iff, OfNat.ofNat_ne_zero, or_false, exists_eq',
        exists_eq_left', and_true, exists_and_left, true_and, implies_true, exists_const, forall_const]
      trace
        "Finished Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: Even (b / a)"
    assumption