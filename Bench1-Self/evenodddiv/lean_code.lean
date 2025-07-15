import Mathlib
universe u v w u_1 u_2 u_3 u₁ u₂ u₃
set_option maxHeartbeats 10000000
set_option linter.unreachableTactic false
open Nat
theorem odd_dvd_even_div_even : ∀ {a b : ℤ}, Odd a → Even b → a ∣ b → Even (b / a) :=
    by
    intro a b a_9469431090218365826 a_16113681004632593245 a_15686058794838959402
    have assert_11376311930969713044 : Odd a → Even b → a ∣ b → ∃ (k : ℤ), b = 2 * k :=
      by
      trace
        "Automation Tactics first\n  | simp?\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: Odd a → Even b → a ∣ b → ∃ k, b = 2 * k"
      intro a_1 a_2 a_3
      simp_all only
      sorry
      trace
        "Finished Automation Tactics first\n  | simp?\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: Odd a → Even b → a ∣ b → ∃ k, b = 2 * k"
    have assert_9553020604411229736 : Odd a → Even b → a ∣ b → ∃ (k : ℤ), b = 2 * k ∧ a ∣ 2 * k :=
      by
      trace
        "Automation Tactics first\n  | simp?\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: Odd a → Even b → a ∣ b → ∃ k, b = 2 * k ∧ a ∣ 2 * k"
      intro a_1 a_2 a_3
      simp_all only [forall_const]
      obtain ⟨w, h⟩ := assert_11376311930969713044
      subst h
      simp_all only [even_two, Even.mul_right, mul_eq_mul_left_iff, OfNat.ofNat_ne_zero, or_false, exists_eq_left']
      trace
        "Finished Automation Tactics first\n  | simp?\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: Odd a → Even b → a ∣ b → ∃ k, b = 2 * k ∧ a ∣ 2 * k"
    have assert_12304523832120167131 : Odd a → Even b → a ∣ b → ∃ (k : ℤ), b = 2 * k → ¬a ∣ 2 :=
      by
      trace
        "Automation Tactics first\n  | simp?\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: Odd a → Even b → a ∣ b → ∃ k, b = 2 * k → ¬a ∣ 2"
      intro a_1 a_2 a_3
      simp_all only [forall_const]
      obtain ⟨w, h⟩ := assert_11376311930969713044
      obtain ⟨w_1, h_1⟩ := assert_9553020604411229736
      obtain ⟨left, right⟩ := h_1
      subst left
      simp_all only [even_two, Even.mul_right, mul_eq_mul_left_iff, OfNat.ofNat_ne_zero, or_false]
      subst h
      sorry
      trace
        "Finished Automation Tactics first\n  | simp?\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: Odd a → Even b → a ∣ b → ∃ k, b = 2 * k → ¬a ∣ 2"
    have assert_5602419255114970354 : Odd a → Even b → a ∣ b → ∃ (k : ℤ), b = 2 * k ∧ a ∣ k :=
      by
      trace
        "Automation Tactics first\n  | simp?\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: Odd a → Even b → a ∣ b → ∃ k, b = 2 * k ∧ a ∣ k"
      intro a_1 a_2 a_3
      simp_all only [forall_const]
      obtain ⟨w, h⟩ := assert_11376311930969713044
      obtain ⟨w_1, h_1⟩ := assert_9553020604411229736
      obtain ⟨w_2, h_2⟩ := assert_12304523832120167131
      obtain ⟨left, right⟩ := h_1
      subst left
      simp_all only [even_two, Even.mul_right, mul_eq_mul_left_iff, OfNat.ofNat_ne_zero, or_false, exists_eq_left']
      subst h
      sorry
      trace
        "Finished Automation Tactics first\n  | simp?\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: Odd a → Even b → a ∣ b → ∃ k, b = 2 * k ∧ a ∣ k"
    have assert_8910331294399055471 : Odd a → Even b → a ∣ b → ∃ (k : ℤ), b = 2 * k ∧ ∃ (m : ℤ), k = m * a :=
      by
      trace
        "Automation Tactics first\n  | simp?\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: Odd a → Even b → a ∣ b → ∃ k, b = 2 * k ∧ ∃ m, k = m * a"
      intro a_1 a_2 a_3
      simp_all only [forall_const]
      obtain ⟨w, h⟩ := assert_11376311930969713044
      obtain ⟨w_1, h_1⟩ := assert_9553020604411229736
      obtain ⟨w_2, h_2⟩ := assert_12304523832120167131
      obtain ⟨w_3, h_3⟩ := assert_5602419255114970354
      obtain ⟨left, right⟩ := h_1
      obtain ⟨left_1, right_1⟩ := h_3
      subst left_1
      simp_all only [even_two, Even.mul_right, mul_eq_mul_left_iff, OfNat.ofNat_ne_zero, or_false, exists_eq_left']
      subst h left
      sorry
      trace
        "Finished Automation Tactics first\n  | simp?\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: Odd a → Even b → a ∣ b → ∃ k, b = 2 * k ∧ ∃ m, k = m * a"
    have assert_10324552449819263937 :
      ∀ {b a : ℕ}, ∃ (k : ℕ), b = 2 * k ∧ ∃ (m : ℕ), k = m * a → b / a = 2 * (b / (2 * a)) := by
      first
      | linarith
      | ring
      | norm_num
      | simp
      | omega
      | rfl
    have assert_10255899962280593693 :
      ∀ {b a : ℕ}, ∃ (k : ℕ), b = 2 * k ∧ ∃ (m : ℕ), k = m * a → 2 * k / a = 2 * m * a / a := by
      first
      | linarith
      | ring
      | norm_num
      | simp
      | omega
      | rfl
    have assert_17511922690879308973 :
      Odd a → Even b → a ∣ b → ∃ (k : ℤ), b = 2 * k → ∃ (m : ℤ), k = m * a → 2 * m * a / a = 2 * m := by
      first
      | linarith
      | ring
      | norm_num
      | simp
      | omega
      | rfl
    have assert_9310499340245235600 :
      (∃ (k : ℤ), b = 2 * k) → (∃ (m : ℤ) (k : ℤ), k = m * a) → ∃ (m : ℤ), Even (2 * m) :=
      by
      trace
        "Automation Tactics first\n  | simp?\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: (∃ k, b = 2 * k) → (∃ m k, k = m * a) → ∃ m, Even (2 * m)"
      simp only [exists_eq, exists_const, even_two, Even.mul_right, imp_self, implies_true]
      trace
        "Finished Automation Tactics first\n  | simp?\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: (∃ k, b = 2 * k) → (∃ m k, k = m * a) → ∃ m, Even (2 * m)"
    have : ∀ {k a : ℤ}, (∃ (k : ℤ), b = 2 * k) → (∃ (m : ℤ), k = m * a) → Even (b / a) :=
      by
      trace
        "Automation Tactics first\n  | simp?\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: ∀ {k a : ℤ}, (∃ k, b = 2 * k) → (∃ m, k = m * a) → Even (b / a)"
      simp only [forall_exists_index]
      trace
        "Finished Automation Tactics first\n  | simp?\n  | hammer [] {aesopPremises := 0, autoPremises := 0} for goal: ∀ {k a : ℤ}, (∃ k, b = 2 * k) → (∃ m, k = m * a) → Even (b / a)"
    trace
      "Automation Tactics first\n  | simp?\n  | hammer {aesopPremises := 5, autoPremises := 0} for goal: Even (b / a)"
    rename_i a_1
    simp_all only [forall_const, exists_eq, exists_const, even_two, Even.mul_right, imp_self, forall_exists_index]
    obtain ⟨w, h⟩ := assert_11376311930969713044
    obtain ⟨w_1, h_1⟩ := assert_9553020604411229736
    obtain ⟨w_2, h_2⟩ := assert_12304523832120167131
    obtain ⟨w_3, h_3⟩ := assert_5602419255114970354
    obtain ⟨w_4, h_4⟩ := assert_8910331294399055471
    obtain ⟨w_5, h_5⟩ := assert_17511922690879308973
    obtain ⟨left, right⟩ := h_1
    obtain ⟨left_1, right_1⟩ := h_3
    obtain ⟨left_2, right_2⟩ := h_4
    obtain ⟨w_6, h_1⟩ := right_2
    subst left_1 h_1
    simp_all only [even_two, Even.mul_right, mul_eq_mul_left_iff, OfNat.ofNat_ne_zero, or_false]
    subst left_2 left h
    simp_all only [dvd_mul_left]
    apply @a_1
    · rfl
    · exact a
    trace
      "Finished Automation Tactics first\n  | simp?\n  | hammer {aesopPremises := 5, autoPremises := 0} for goal: Even (b / a)"