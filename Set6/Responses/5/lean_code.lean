import Mathlib

theorem Int.dvd_trans : ∀ {x y z : ℤ}, x ∣ y → y ∣ z → x ∣ z :=
    by
    intro x y
    exact fun {z} a a_1 => Int.dvd_trans a a_1