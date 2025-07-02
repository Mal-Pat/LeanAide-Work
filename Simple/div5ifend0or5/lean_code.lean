import Mathlib

theorem integer.five_dvd_ten_mul_and_add_five : ∀ (n : ℤ), 5 ∣ 10 * n ∧ 5 ∣ 10 * n + 5 :=
    by
    intro n
    simp_all only [dvd_add_self_right, and_self]
    apply Int.dvd_trans
    on_goal 2 => {apply Int.dvd_mul_right
    }
    · simp_all only [Int.reduceDvd]