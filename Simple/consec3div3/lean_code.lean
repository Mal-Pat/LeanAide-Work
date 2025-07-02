import Mathlib

theorem three_dvd_sum_consecutive : ∀ (n : ℤ), 3 ∣ n + (n + 1) + (n + 2) :=
    by
    intro n
    have assert_16504161470097087058 : n + (n + 1) + (n + 2) = 3 * (n + 1) := by sorry
    (expose_names; exact Dvd.intro (n_1 + 1) (id (Eq.symm assert_16504161470097087058)))
    (omega)