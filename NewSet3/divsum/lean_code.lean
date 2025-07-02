import Mathlib

theorem Int.dvd_add : ∀ {a b c : ℤ}, a ∣ b → a ∣ c → a ∣ b + c :=
    by
    intro a b c hab hac
    exact (Int.dvd_add_right hab).mpr hac