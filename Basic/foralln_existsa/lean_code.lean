import Mathlib
universe u v w u_1 u_2 u_3 u₁ u₂ u₃
set_option maxHeartbeats 10000000
set_option linter.unreachableTactic false
open Nat
theorem exists_nat_gt_double : ∀ (n : ℕ), ∃ (m : ℕ), m - n > n :=
    by
    intro n
    use n + (n + 1)
    have assert_4980421081867424580 : n + 1 > n :=
      by
      trace "Automation Tactics hammer [] for goal: n + 1 > n"
      simp_all only [gt_iff_lt, lt_add_iff_pos_right, lt_one_iff, pos_of_gt]
      trace "Finished Automation Tactics hammer [] for goal: n + 1 > n"
    trace
      "Error: codegen: no function found for key calculation_sequence available keys are [(some Table), (some calculation), (some definition), (some object), (some image), (some section), (some assume_statement), (some some_statement), (some contradiction_statement), (some abstract), (some author), (some table), (some citation), (some assert_statement), (some title), (some multi-condition_cases_statement), (some proof), (some general_induction_statement), (some internalreference), (some theorem), (some conclude_statement), (some remark), (some induction_statement), (some metadata), (some paragraph), (some logicalstepsequence), (some let_statement), (some document), (some Figure), (some condition_cases_statement), (some figure), (some bi-implication_cases_statement), (some bibliography), (some pattern_cases_statement)]"
    have : ∃ (m : ℕ), m - n > n :=
      by
      trace "Automation Tactics hammer [] for goal: ∃ m, m - n > n"
      simp_all only [gt_iff_lt, lt_add_iff_pos_right, lt_one_iff, pos_of_gt]
      sorry
      trace "Finished Automation Tactics hammer [] for goal: ∃ m, m - n > n"
    trace "Automation Tactics hammer for goal: n + (n + 1) - n > n"
    simp_all only [gt_iff_lt, lt_add_iff_pos_right, lt_one_iff, pos_of_gt, add_tsub_cancel_left]
    trace "Finished Automation Tactics hammer for goal: n + (n + 1) - n > n"