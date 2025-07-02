import Mathlib

  theorem five_gt_two : 5 > 2 := by exact Nat.lt_of_sub_eq_succ rfl
  theorem thm_11978512684851338494 : ∀ {n : ℕ}, n > 5 → n > 2 :=
    by
    intro n a
    exact Nat.lt_of_add_left_lt a