import Mathlib

example :=
  "Error: codegen: no valid function found for key definition in JSON object {\"label\": \"def:euclidean_norm\",\n \"header\": \"Definition\",\n \"definition\":\n \"For a vector `v` in an n-dimensional real vector space, represented as `v = (v_1, v_2, ..., v_n)` (where `v_i` are real numbers), the Euclidean norm (or L2 norm) of `v` is defined as `∥v∥ = sqrt(v_1^2 + v_2^2 + ... + v_n^2)`.\"}; tried: [LeanAide.defCode: codegen: no definition translation found for For a vector `v` in an n-dimensional real vector space, represented as `v = (v_1, v_2, ..., v_n)` (where `v_i` are real numbers), the Euclidean norm (or L2 norm) of `v` is defined as `∥v∥ = sqrt(v_1^2 + v_2^2 + ... + v_n^2)`.]"
def scalar_mul {α : Type u} [Semiring α] {n : ℕ} (c : α) (v : Fin n → α) : Fin n → α := fun i => c * v i
abbrev RealVectorSpace.norm_smul.prop : Prop :=
  ∀ {n : ℕ} (v : EuclideanSpace ℝ (Fin n)) (c : ℝ), ‖c • v‖ = |c| * ‖v‖
theorem RealVectorSpace.norm_smul : ∀ {n : ℕ} (v : EuclideanSpace ℝ (Fin n)) (c : ℝ), ‖c • v‖ = |c| * ‖v‖ := by
