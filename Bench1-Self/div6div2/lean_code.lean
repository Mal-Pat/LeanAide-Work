import Mathlib
universe u v w u_1 u_2 u_3 u₁ u₂ u₃
set_option maxHeartbeats 10000000
set_option linter.unreachableTactic false
open Nat
theorem nat.div_of_dvd_of_dvd : ∀ (n : ℕ), 6 ∣ n → 2 ∣ n :=
    by
    intro n a_8249237858466965533
    have assert_1537035095498445343 : ∃ (k : ℕ), n = 6 * k :=
      by
      trace
        "Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: ∃ k, n = 6 * k"
      exact a_8249237858466965533
      trace
        "Finished Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: ∃ k, n = 6 * k"
    let ⟨k, assert_10519291151578733484⟩ := assert_1537035095498445343
    have assert_10542943045778900211 : n = 2 * (3 * k) :=
      by
      trace
        "Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: n = 2 * (3 * k)"
      subst assert_10519291151578733484
      simp_all only [dvd_mul_right, mul_eq_mul_left_iff, OfNat.ofNat_ne_zero, or_false, exists_eq']
      sorry
      trace
        "Finished Automation Tactics first\n  | (simp?; done)\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: n = 2 * (3 * k)"
    exact Dvd.intro (3 * k) (id (Eq.symm assert_10542943045778900211))