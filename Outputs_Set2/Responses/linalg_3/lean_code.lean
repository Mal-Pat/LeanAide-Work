import Mathlib

def dot_product_self : ∀ {n : Type u} [inst : Fintype n] (v : n → ℝ), ℝ := fun {n} [Fintype n] (v : n → ℝ) =>
  ∑ i, v i * v i
abbrev dot_product_self_nonneg.prop : Prop :=
  ∀ {n : ℕ} (v : Fin n → ℝ), 0 ≤ Matrix.dotProduct v v
theorem dot_product_self_nonneg : ∀ {n : ℕ} (v : Fin n → ℝ), 0 ≤ Matrix.dotProduct v v := by
