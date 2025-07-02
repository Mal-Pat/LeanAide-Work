import Mathlib

theorem thm_969481846356001838 : ∀ (k n : ℤ), Even k ∨ Odd k → Even n → ∃ (m : ℤ), k * n = 2 * m :=
    by
    intro k n a a
    trace
      "Error: codegen: no valid function found for key pattern_cases_statement in JSON object {\"proof_cases\":\n [{\"type\": \"pattern_case\",\n   \"proof\":\n   {\"type\": \"Proof\",\n    \"proof_steps\":\n    [{\"type\": \"LogicalStepSequence\",\n      \"items\":\n      [{\"variable_name\": \"i\",\n        \"variable_kind\": \"ℤ\",\n        \"type\": \"some_statement\",\n        \"statement\": \"k = 2i\"},\n       {\"type\": \"calculation\",\n        \"calculation_sequence\": [\"k·n = (2i)·n\", \"(2i)·n = 2·(i·n)\"]},\n       {\"variable_type\": \"ℤ\",\n        \"variable_name\": \"m\",\n        \"value\": \"i·n\",\n        \"type\": \"let_statement\",\n        \"statement\": \"m := i·n\"},\n       {\"type\": \"conclude_statement\", \"claim\": \"∃ m: ℤ, k·n = 2m\"}]}],\n    \"claim_label\": \"thm:even_mul_even_or_odd\"},\n   \"pattern\": \"k is even\"},\n  {\"type\": \"pattern_case\",\n   \"proof\":\n   {\"type\": \"Proof\",\n    \"proof_steps\":\n    [{\"type\": \"LogicalStepSequence\",\n      \"items\":\n      [{\"variable_name\": \"j\",\n        \"variable_kind\": \"ℤ\",\n        \"type\": \"some_statement\",\n        \"statement\": \"k = 2j + 1\"},\n       {\"type\": \"calculation\",\n        \"calculation_sequence\":\n        [\"(2j+1)·n = 2j·n + 1·n\", \"1·n = n\", \"(2j+1)·n = 2·(j·n) + n\"]},\n       {\"variable_name\": \"l\",\n        \"variable_kind\": \"ℤ\",\n        \"type\": \"some_statement\",\n        \"statement\": \"n = 2l\"},\n       {\"type\": \"calculation\",\n        \"calculation_sequence\":\n        [\"k·n = 2·(j·n) + n\",\n         \"n = 2l\",\n         \"k·n = 2·(j·n) + 2l\",\n         \"k·n = 2·(j·n + l)\"]},\n       {\"variable_type\": \"ℤ\",\n        \"variable_name\": \"m\",\n        \"value\": \"j·n + l\",\n        \"type\": \"let_statement\",\n        \"statement\": \"m := j·n + l\"},\n       {\"type\": \"conclude_statement\", \"claim\": \"∃ m: ℤ, k·n = 2m\"}]}],\n    \"claim_label\": \"thm:even_mul_even_or_odd\"},\n   \"pattern\": \"k is odd\"}],\n \"on\": \"k is even ∨ k is odd\"}; tried: [LeanAide.patternCasesCode: Tactics failed on ∃ m, k * n = 2 * m: function expected at\n  k\nterm has type\n  ℤ when expecting 2 goals.]"
    have : Even k ∨ Odd k → Even n → ∃ (m : ℤ), k * n = 2 * m :=
      by
      intro a_2 a_3
      simp_all only
      cases a_2 with
      | inl h => sorry
      | inr h_1 => sorry
    (expose_names; exact h a_1 a)