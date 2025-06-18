import Mathlib

  #check
    "Error: codegen: no valid function found for key definition in JSON object {\"label\": \"def:R\",\n \"header\": \"Definition\",\n \"definition\": \"ℝ denotes the set of real numbers.\"}; tried: [LeanAide.defCode: codegen: no definition translation found for ℝ denotes the set of real numbers.]"
  def Real.gt : ℝ → ℝ → Prop := fun x y => x > y
  def transitive_gt_real : ∀ a b c : ℝ, a > b → b > c → a > c := fun a b c hab hbc => lt_trans hbc hab
  theorem Real.gt_of_gt_trans : ∀ x > 5, x > 2 := by exact fun x a => Nat.lt_of_add_left_lt a