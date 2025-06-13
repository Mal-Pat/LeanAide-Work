import Mathlib

theorem Nat.even_add_odd : ∀ {m n : ℕ}, Even m → ¬Even n → ¬Even (m + n) :=
    by
    have assert_12268276386692234240 :
      ∀ (E O p q S : ℕ), Even E → Odd O → E = 2 * p → O = 2 * q + 1 → S = E + O → S = 2 * p + (2 * q + 1) :=
      by
      intro E O p q S a a_1 a_2 a_3 a_4
      subst a_3 a_2 a_4
      simp_all only [even_two, Even.mul_right, Even.add_one, Nat.add_left_cancel_iff]
    have assert_5375841740629495789 :
      ∀ (E O p q : ℕ), Even E → Odd O → E = 2 * p → O = 2 * q + 1 → E + O = 2 * (p + q) + 1 :=
      by
      intro E O p q a a_1 a_2 a_3
      subst a_2 a_3
      simp_all only [Nat.add_left_cancel_iff, implies_true, even_two, Even.mul_right, Even.add_one]
      (ring)
    have assert_10380115732363780412 :
      ∀ (E O p q S k : ℕ), Even E → Odd O → E = 2 * p → O = 2 * q + 1 → S = E + O → k = p + q → S = 2 * k + 1 :=
      by
      intro E O p q S k a a_1 a_2 a_3 a_4 a_5
      subst a_5 a_4 a_3 a_2
      simp_all only [even_two, Even.mul_right, odd_one, mul_eq_mul_left_iff, OfNat.ofNat_ne_zero, or_false,
        Nat.right_eq_add, mul_eq_zero, false_or, add_zero, Nat.add_left_cancel_iff, implies_true, Even.add_one]
      (ring)
    have : ∀ {E O p q S k : ℕ}, Even E → Odd O → E = 2 * p → O = 2 * q + 1 → S = E + O → k = p + q → Odd S :=
      by
      intro E O p q S k a a_1 a_2 a_3 a_4 a_5
      subst a_4 a_3 a_2 a_5
      simp_all only [even_two, Even.mul_right, odd_one, mul_eq_mul_left_iff, OfNat.ofNat_ne_zero, or_false,
        Nat.right_eq_add, mul_eq_zero, false_or, add_zero, Nat.add_left_cancel_iff, implies_true, Even.add_one]
      sorry
    intro m n a_1 a_2
    simp_all only [even_two, Even.mul_right, odd_one, mul_eq_mul_left_iff, OfNat.ofNat_ne_zero, or_false,
      Nat.right_eq_add, mul_eq_zero, false_or, add_zero, Nat.add_left_cancel_iff, implies_true, Nat.not_even_iff_odd]
    sorry
    intro m n a a_1
    simp_all only [Nat.not_even_iff_odd]
    sorry