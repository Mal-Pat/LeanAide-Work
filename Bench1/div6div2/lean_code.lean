import Mathlib
universe u v w u_1 u_2 u_3 u₁ u₂ u₃
set_option maxHeartbeats 10000000
set_option linter.unreachableTactic false
open Nat
  theorem int.two_dvd_six : 2 ∣ 6 :=
    by
    trace "Automation tactics found for 2 ∣ 6, closing goal"
    simp only [reduceDvd]
  theorem int.dvd_n_six_dvd_two : ∀ (n : ℤ), 6 ∣ n → 2 ∣ n :=
    by
    intro n a_13862411731675019214
    have assert_3914253318849307051 : 6 ∣ n → 2 ∣ 6 :=
      by
      trace
        "Automation Tactics first\n  | simp?\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: 6 ∣ n → 2 ∣ 6"
      simp only [reduceDvd, implies_true]
      trace
        "Finished Automation Tactics first\n  | simp?\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: 6 ∣ n → 2 ∣ 6"
    have assert_14797642167091693928 : 6 ∣ n → 2 ∣ n :=
      by
      trace
        "Automation Tactics first\n  | simp?\n  | hammer [Int.dvd_trans] {aesopPremises := 0, autoPremises := 0} for goal: 6 ∣ n → 2 ∣ n"
      intro a
      simp_all only [reduceDvd, imp_self]
      apply Int.dvd_trans
      on_goal 2 => {exact a
      }
      · simp_all only [Int.reduceDvd]
      trace
        "Finished Automation Tactics first\n  | simp?\n  | hammer [Int.dvd_trans] {aesopPremises := 0, autoPremises := 0} for goal: 6 ∣ n → 2 ∣ n"
    exact assert_14797642167091693928 a_13862411731675019214