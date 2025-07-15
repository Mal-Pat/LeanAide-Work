import Mathlib
universe u v w u_1 u_2 u_3 u₁ u₂ u₃
set_option maxHeartbeats 10000000
set_option linter.unreachableTactic false
open Nat
theorem not_prime_of_mod_six_eq_zero_or_four : ∀ {n : ℕ}, n % 6 = 0 ∨ n % 6 = 4 → ¬Nat.Prime n :=
    by
    intro n a_7972533484200855580
    if condition_5717059481446860652 : ∀ (a : ℕ), False then
      
      trace "Automation tactics found for ¬Nat.Prime n, closing goal"
      simp_all only [forall_const]
    else
      if condition_17865745194416784212 : Nat.Prime n → n % 6 = 4 then
        
        have assert_15552591460068659806 : Nat.Prime n → ∃ (k₁ : ℕ), n = 6 * k₁ + 4 :=
          by
          trace
            "Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: Nat.Prime n → ∃ k₁, n = 6 * k₁ + 4"
          intro a
          simp_all only [forall_const, not_false_eq_true]
          cases a_7972533484200855580 with
          | inl h => sorry
          | inr h_1 => sorry
          trace
            "Finished Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: Nat.Prime n → ∃ k₁, n = 6 * k₁ + 4"
        have assert_10990165071159335862 : n > 2 :=
          by
          trace
            "Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: n > 2"
          simp_all only [forall_const, not_false_eq_true, gt_iff_lt]
          cases a_7972533484200855580 with
          | inl
            h =>
            simp_all only [OfNat.zero_ne_ofNat, imp_false, not_isEmpty_of_nonempty, IsEmpty.exists_iff, implies_true]
            sorry
          | inr h_1 =>
            simp_all only [implies_true]
            sorry
          trace
            "Finished Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: n > 2"
        have assert_1296535485183339749 : Nat.Prime n → 2 ∣ n :=
          by
          trace
            "Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: Nat.Prime n → 2 ∣ n"
          intro a
          simp_all only [OfNat.ofNat_ne_zero, or_true, forall_const, not_false_eq_true, gt_iff_lt]
          obtain ⟨w, h⟩ := assert_15552591460068659806
          subst h
          simp_all only [mul_add_mod_self_left, reduceMod, lt_add_iff_pos_left, add_pos_iff, ofNat_pos,
            mul_pos_iff_of_pos_left, or_true, Nat.dvd_add_self_right]
          sorry
          trace
            "Finished Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: Nat.Prime n → 2 ∣ n"
        have : Nat.Prime n := by
          intro contraHyp
          trace
            "Automation Tactics first\n  | (simp?; done)\n  | hammer {aesopPremises := 5, autoPremises := 0} for goal: False"
          simp_all only [OfNat.ofNat_ne_zero, or_true, forall_const, not_false_eq_true, gt_iff_lt]
          obtain ⟨w, h⟩ := assert_15552591460068659806
          subst h
          simp_all only [mul_add_mod_self_left, reduceMod, lt_add_iff_pos_left, add_pos_iff, ofNat_pos,
            mul_pos_iff_of_pos_left, or_true, Nat.dvd_add_self_right]
          sorry
          trace
            "Finished Automation Tactics first\n  | (simp?; done)\n  | hammer {aesopPremises := 5, autoPremises := 0} for goal: False"
        trace
          "Automation Tactics first\n  | (simp?; done)\n  | hammer {aesopPremises := 5, autoPremises := 0} for goal: ¬Nat.Prime n"
        simp_all only [OfNat.ofNat_ne_zero, or_true, forall_const, not_false_eq_true, gt_iff_lt, not_true_eq_false]
        obtain ⟨w, h⟩ := assert_15552591460068659806
        subst h
        simp_all only [mul_add_mod_self_left, reduceMod, lt_add_iff_pos_left, add_pos_iff, ofNat_pos,
          mul_pos_iff_of_pos_left, or_true, Nat.dvd_add_self_right]
        sorry
        trace
          "Finished Automation Tactics first\n  | (simp?; done)\n  | hammer {aesopPremises := 5, autoPremises := 0} for goal: ¬Nat.Prime n"
      else
        trace
          "Automation Tactics first\n  | (simp?; done)\n  | hammer {aesopPremises := 5, autoPremises := 0} for goal: ¬Nat.Prime n"
        simp_all only [forall_const, not_false_eq_true, Classical.not_imp, not_true_eq_false]
        obtain ⟨left, right⟩ := condition_17865745194416784212
        cases a_7972533484200855580 with
        | inl h => sorry
        | inr h_1 => sorry
        trace
          "Finished Automation Tactics first\n  | (simp?; done)\n  | hammer {aesopPremises := 5, autoPremises := 0} for goal: ¬Nat.Prime n"
    done