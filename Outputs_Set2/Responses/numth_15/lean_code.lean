import Mathlib

def dvd (x y : ℤ) : Prop :=
  ∃ k : ℤ, y = x * k
abbrev IntEndsInZeroOrFive_iff_DivisibleByFive.prop : Prop :=
  ∀ (N : ℤ), N % 10 = 0 ∨ N % 10 = 5 ↔ 5 ∣ N
theorem IntEndsInZeroOrFive_iff_DivisibleByFive : ∀ (N : ℤ), N % 10 = 0 ∨ N % 10 = 5 ↔ 5 ∣ N :=
  by
  simp_all only [EuclideanDomain.mod_eq_zero]
  apply Iff.intro
  · intro a
    cases a with
    | inl h => (omega)
    | inr h_1 => (omega)
  · intro a
    (omega)
  have : ∀ (N : ℤ), N % 10 = 0 ∨ N % 10 = 5 ↔ 5 ∣ N :=
    by
    simp_all only [EuclideanDomain.mod_eq_zero]
    apply Iff.intro
    · intro a
      cases a with
      | inl h => (omega)
      | inr h_1 => (omega)
    · intro a
      (omega)
  simp_all only [EuclideanDomain.mod_eq_zero]
  apply Iff.intro
  · intro a
    cases a with
    | inl h => (omega)
    | inr h_1 => (omega)
  · intro a
    (omega)
  simp_all only [EuclideanDomain.mod_eq_zero]
  apply Iff.intro
  · intro a
    cases a with
    | inl h => (omega)
    | inr h_1 => (omega)
  · intro a
    (omega)
