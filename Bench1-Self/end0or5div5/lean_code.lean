import Mathlib
universe u v w u_1 u_2 u_3 u₁ u₂ u₃
set_option maxHeartbeats 10000000
set_option linter.unreachableTactic false
open Nat
theorem is_divisible_by_five_iff_last_digit_zero_or_five : ∀ {n : ℕ}, n % 10 = 0 ∨ n % 10 = 5 → 5 ∣ n :=
    by
    intro n a_13397840144843358689
    if condition_539958120475410144 : n % 10 = 0 then
      
      have assert_14624567202372330351 : 10 ∣ n :=
        by
        trace
          "Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: 10 ∣ n"
        simp_all only [OfNat.zero_ne_ofNat, or_false]
        sorry
        trace
          "Finished Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: 10 ∣ n"
      have assert_14491579695485910030 : ∃ (k : ℕ), n = 10 * k :=
        by
        trace
          "Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: ∃ k, n = 10 * k"
        simp_all only [OfNat.zero_ne_ofNat, or_false]
        exact assert_14624567202372330351
        trace
          "Finished Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: ∃ k, n = 10 * k"
      let ⟨k, assert_13915564691081828623⟩ := assert_14491579695485910030
      have assert_14617578209288026815 : n = 5 * (2 * k) :=
        by
        trace
          "Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: n = 5 * (2 * k)"
        subst assert_13915564691081828623
        simp_all only [OfNat.zero_ne_ofNat, or_false, mul_mod_right, dvd_mul_right, mul_eq_mul_left_iff,
          OfNat.ofNat_ne_zero, exists_eq']
        sorry
        trace
          "Finished Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: n = 5 * (2 * k)"
      exact Dvd.intro (2 * k) (id (Eq.symm assert_14617578209288026815))
    else
      if condition_7373442126900311225 : n % 10 = 5 then
        
        have assert_4532435913572188164 : ∃ (k : ℕ), n = 10 * k + 5 :=
          by
          trace
            "Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: ∃ k, n = 10 * k + 5"
          simp_all only [OfNat.ofNat_ne_zero, or_true, not_false_eq_true]
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
        exact Dvd.intro (2 * k + 1) (id (Eq.symm assert_8295422331937614310))
      else
        trace
          "Automation Tactics first\n  | (simp?; done)\n  | hammer {aesopPremises := 5, autoPremises := 0} for goal: 5 ∣ n"
        simp_all only [or_self]
        trace
          "Finished Automation Tactics first\n  | (simp?; done)\n  | hammer {aesopPremises := 5, autoPremises := 0} for goal: 5 ∣ n"
    done