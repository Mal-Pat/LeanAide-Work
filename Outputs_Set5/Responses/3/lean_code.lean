import Mathlib

theorem Int.dvdTwoOfLastDigitEven : ∀ (n : ℕ), n % 10 = 0 ∨ n % 10 = 2 ∨ n % 10 = 4 ∨ n % 10 = 6 ∨ n % 10 = 8 → 2 ∣ n :=
    by
    match c_2947399976204211955 : the last digit of an integer n with
    have : ∀ (n : ℕ), n % 10 = 0 ∨ n % 10 = 2 ∨ n % 10 = 4 ∨ n % 10 = 6 ∨ n % 10 = 8 → 2 ∣ n :=
      by
      intro n a
      cases a with
      | inl h => (omega)
      | inr h_1 =>
        cases h_1 with
        | inl h => (omega)
        | inr h_2 =>
          cases h_2 with
          | inl h => (omega)
          | inr h_1 =>
            cases h_1 with
            | inl h => (omega)
            | inr h_2 => (omega)
    intro n a
    cases a with
    | inl h => (omega)
    | inr h_1 =>
      cases h_1 with
      | inl h => (omega)
      | inr h_2 =>
        cases h_2 with
        | inl h => (omega)
        | inr h_1 =>
          cases h_1 with
          | inl h => (omega)
          | inr h_2 => (omega)