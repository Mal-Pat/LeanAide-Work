import Mathlib

  theorem even_digit_exists_half : ∀ d ∈ {0, 2, 4, 6, 8}, ∃ (m : ℕ), d = 2 * m :=
    by
    intro d a
    match c_12332387987229049913 : d with
    | 0 =>
      let m : ℕ := 0
      have assert_15458523715382601829 : d ∈ {0, 2, 4, 6, 8} → ∃ (m : ℕ), d = 2 * m := by sorry
      sorry
    | 2 =>
      let m : ℕ := 1
      have assert_11339244733503852521 : d ∈ {0, 2, 4, 6, 8} → ∃ (m : ℕ), m = 1 ∧ d = 2 * m := by sorry
      sorry
    | 4 =>
      let m : ℕ := 2
      have assert_15458523715382601829 : d ∈ {0, 2, 4, 6, 8} → ∃ (m : ℕ), d = 2 * m := by sorry
      sorry
    | 6 =>
      let m : ℕ := 3
      trace
        "Error: codegen: no valid function found for key assert_statement in JSON object {\"claim\": \"d = 2 * m\"}; tried: [LeanAide.assertionCode: codegen: failed to translate 'd = 2 * m' to a proposition even with 'full statement', error: <input>:1:0: expected '/--', ':' or term; full claim: \\(d\\) equals twice \\(m\\)., error: <input>:1:0: expected '/--', ':' or term]"
      sorry
    | 8 =>
      let m : ℕ := 4
      have assert_10935221031515536430 : d ∈ {0, 2, 4, 6, 8} → ∃ (m : ℕ), m = 4 ∧ d = 2 * m := by sorry
      sorry
    trace
      "Error: codegen: no function found for key type available keys are [(some Table), (some calculation), (some definition), (some image), (some section), (some assume_statement), (some some_statement), (some contradiction_statement), (some abstract), (some author), (some table), (some citation), (some assert_statement), (some title), (some multi-condition_cases_statement), (some proof), (some internalreference), (some theorem), (some conclude_statement), (some remark), (some induction_statement), (some metadata), (some paragraph), (some logicalstepsequence), (some let_statement), (some document), (some Figure), (some condition_cases_statement), (some figure), (some bi-implication_cases_statement), (some bibliography), (some pattern_cases_statement)]"
  #check
    "Error: codegen: no valid function found for key theorem in JSON object {\"proof\":\n {\"type\": \"Proof\",\n  \"proof_steps\":\n  [{\"variable_name\": \"k\",\n    \"value\": \"n / 10\",\n    \"type\": \"let_statement\",\n    \"statement\": \"define k := n / 10\"},\n   {\"variable_name\": \"d\",\n    \"value\": \"n % 10\",\n    \"type\": \"let_statement\",\n    \"statement\": \"define d := n % 10\"},\n   {\"type\": \"assert_statement\",\n    \"proof_method\": \"division algorithm for natural numbers\",\n    \"label\": \"div_mod\",\n    \"claim\": \"n = 10 * k + d\"},\n   {\"type\": \"assert_statement\",\n    \"internal_references\": [{\"target_identifier\": \"lem:even_mod10\"}],\n    \"claim\": \"there exists m : ℕ such that d = 2 * m\"},\n   {\"type\": \"assert_statement\",\n    \"proof_method\": \"since 10 = 2 * 5\",\n    \"claim\": \"2 ∣ 10\"},\n   {\"type\": \"assert_statement\",\n    \"proof_method\": \"divisibility preserved under multiplication on the right\",\n    \"claim\": \"2 ∣ 10 * k\"},\n   {\"type\": \"assert_statement\",\n    \"proof_method\": \"definition of dvd using m\",\n    \"claim\": \"2 ∣ d\"},\n   {\"type\": \"assert_statement\",\n    \"proof_method\": \"additivity of divisibility\",\n    \"internal_references\": [{\"target_identifier\": \"div_mod\"}],\n    \"claim\": \"2 ∣ (10 * k + d)\"},\n   {\"type\": \"conclude_statement\"}],\n  \"claim_label\": \"thm:div_by_two\"},\n \"label\": \"thm:div_by_two\",\n \"hypothesis\":\n [{\"type\": \"assume_statement\", \"assumption\": \"n : ℕ\"},\n  {\"type\": \"assume_statement\", \"assumption\": \"n % 10 ∈ {0,2,4,6,8}\"}],\n \"header\": \"Theorem\",\n \"claim\": \"2 ∣ n\"}; tried: [LeanAide.theoremCode: codegen: failed to translate '2 ∣ n' to a proposition even with 'full statement', error: codegen: no valid type found for assertion '2 ∣ n', full statement Assume that: n : ℕ\nAssume that: n % 10 ∈ {0,2,4,6,8}\n2 ∣ n; all translations: #[∀ (n : ℕ), n % 10 ∈ {0, 2, 4, 6, 8} → 2 ∣ n, ∀ (n : ℕ), n % 10 ∈ {0, 2, 4, 6, 8} → 2 ∣ n, ∀ (n : ℕ), n % 10 ∈ {0, 2, 4, 6, 8} → 2 ∣ n, ∀ (n : ℕ), n % 10 ∈ {0, 2, 4, 6, 8} → 2 ∣ n, ∀ (n : ℕ), n % 10 ∈ {0, 2, 4, 6, 8} → 2 ∣ n, ∀ (n : ℕ), n % 10 ∈ {0, 2, 4, 6, 8} → 2 ∣ n, ∀ {n : ℕ}, n % 10 ∈ {0, 2, 4, 6, 8} → 2 ∣ n, ∀ (n : ℕ), n % 10 ∈ {0, 2, 4, 6, 8} → 2 ∣ n, ∀ (n : ℕ), n % 10 ∈ {0, 2, 4, 6, 8} → 2 ∣ n, ∀ (n : ℕ), n % 10 ∈ {0, 2, 4, 6, 8} → 2 ∣ n]; full claim: Two divides \\( n \\)., error: codegen: no valid type found for assertion 'Two divides \\( n \\).', full statement Assume that: n : ℕ\nAssume that: n % 10 ∈ {0,2,4,6,8}\nTwo divides \\( n \\).; all translations: #[∀ (n : ℕ), n % 10 ∈ {0, 2, 4, 6, 8} → 2 ∣ n, ∀ (n : ℕ), n % 10 ∈ {0, 2, 4, 6, 8} → 2 ∣ n, ∀ (n : ℕ), n % 10 ∈ {0, 2, 4, 6, 8} → 2 ∣ n, ∀ (n : ℕ), n % 10 ∈ {0, 2, 4, 6, 8} → 2 ∣ n, ∀ (n : ℕ), n % 10 ∈ {0, 2, 4, 6, 8} → 2 ∣ n, ∀ (n : ℕ), n % 10 ∈ {0, 2, 4, 6, 8} → 2 ∣ n, ∀ (n : ℕ), n % 10 ∈ {0, 2, 4, 6, 8} → 2 ∣ n, ∀ (n : ℕ), n % 10 ∈ {0, 2, 4, 6, 8} → 2 ∣ n, ∀ (n : ℕ), n % 10 ∈ {0, 2, 4, 6, 8} → 2 ∣ n, ∀ (n : ℕ), n % 10 ∈ {0, 2, 4, 6, 8} → 2 ∣ n]]"