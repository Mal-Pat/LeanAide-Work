import Mathlib

def dotProduct_self : ∀ {n : Type u} {α : Type v} [inst : Fintype n] [inst : Semiring α] (v : n → α), α :=
  fun {n α} [Fintype n] [Semiring α] v => ∑ i, (v i) * (v i)
abbrev dot_product_self_nonneg.prop : Prop :=
  ∀ {n : ℕ} (v : Fin n → ℝ), 0 ≤ Matrix.dotProduct v v
theorem dot_product_self_nonneg : ∀ {n : ℕ} (v : Fin n → ℝ), 0 ≤ Matrix.dotProduct v v :=
  by
  intro v
  sorry
