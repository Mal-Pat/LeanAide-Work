import Mathlib

def Int.dvd : ℤ → ℤ → Prop := fun x y => ∃ k : ℤ, y = x * k
abbrev Int.EndsInZeroOrFive_iff_DivisibleByFive.prop : Prop :=
  ∀ (N : ℤ), N % 10 = 0 ∨ N % 10 = 5 ↔ 5 ∣ N
theorem Int.EndsInZeroOrFive_iff_DivisibleByFive : ∀ (N : ℤ), N % 10 = 0 ∨ N % 10 = 5 ↔ 5 ∣ N :=
  by
  simp_all only [EuclideanDomain.mod_eq_zero]
  apply Iff.intro
  · intro a
    cases a with
    | inl h => (omega)
    | inr h_1 => (omega)
  · intro a
    (omega)
  have : ∀ {N : ℤ}, (∃ (k : ℤ), N = 5 * k) ↔ N % 10 = 0 ∨ N % 10 = 5 :=
    by
    simp_all only [EuclideanDomain.mod_eq_zero]
    apply Iff.intro
    · intro a
      obtain ⟨w, h⟩ := a
      subst h
      sorry
    · intro a
      cases a with
      | inl h => sorry
      | inr h_1 => sorry
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
