import Mathlib

  abbrev exists_irrational_irrational_pow_rational.prop : Prop :=
    ∃ (x : ℝ) (y : ℝ), Irrational x ∧ Irrational y ∧ ∃ (q : ℚ), x ^ y = (↑q : ℝ)
  theorem exists_irrational_irrational_pow_rational :
      ∃ (x : ℝ) (y : ℝ), Irrational x ∧ Irrational y ∧ ∃ (q : ℚ), x ^ y = (↑q : ℝ) :=
    by
    let p := Real.sqrt 2 ^ Real.sqrt 2
    if condition_6595253563589288821 : ∀ {p : ℚ}, ∃ (q : ℚ), p = q then
      
      let x := Real.sqrt 2
      let y := Real.sqrt 2
      have assert_16308490223534104008 : ∀ {x : ℚ} {y : ℕ}, ∃ (q : ℚ), x ^ y = q := by sorry
      trace
        "Error: codegen: no function found for key type available keys are [(some Table), (some calculation), (some definition), (some object), (some image), (some section), (some assume_statement), (some some_statement), (some contradiction_statement), (some abstract), (some author), (some table), (some citation), (some assert_statement), (some title), (some multi-condition_cases_statement), (some proof), (some general_induction_statement), (some internalreference), (some theorem), (some conclude_statement), (some remark), (some induction_statement), (some metadata), (some paragraph), (some logicalstepsequence), (some let_statement), (some document), (some Figure), (some condition_cases_statement), (some figure), (some bi-implication_cases_statement), (some bibliography), (some pattern_cases_statement)]"
      simp_all only [exists_eq', implies_true, and_true, exists_and_left, exists_and_right, and_self]
      sorry
      simp_all only [exists_eq', implies_true, and_true, exists_and_left, exists_and_right, and_self]
      sorry
    else simp_all only [exists_eq', implies_true, not_true_eq_false]
    done