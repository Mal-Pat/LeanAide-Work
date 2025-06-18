import Mathlib

  #check
    "Error: codegen: no valid function found for key definition in JSON object {\"label\": \"D1\",\n \"header\": \"Definition\",\n \"definition\": \"ℝ denotes the set of real numbers.\"}; tried: [LeanAide.defCode: codegen: no definition translation found for ℝ denotes the set of real numbers.]"
  def gt_real (a b : ℝ) : Prop :=
    a - b ∈ Set.Ioi (0 : ℝ)
  theorem forall_mem_real_gt_trans_gt : ∀ x > 5, x > 2 := by exact fun x a => Nat.lt_of_add_left_lt a