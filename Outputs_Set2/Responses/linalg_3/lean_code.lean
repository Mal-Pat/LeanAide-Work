import Mathlib

  def dot_product_self : {n : ℕ} → (v : Fin n → ℝ) → ℝ := fun {n} v => ∑ i : Fin n, (v i) ^ 2
  abbrev dot_product_self_nonneg.prop : Prop :=
    ∀ {n : ℕ} (v : Fin n → ℝ), 0 ≤ ∑ i : Fin n, v i * v i
  theorem dot_product_self_nonneg : ∀ {n : ℕ} (v : Fin n → ℝ), 0 ≤ ∑ i : Fin n, v i * v i :=
    by
    intro v
    sorry