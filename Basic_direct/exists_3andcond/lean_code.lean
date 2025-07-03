import Mathlib
universe u v w u_1 u_2 u_3 u₁ u₂ u₃
set_option maxHeartbeats 10000000
set_option linter.unreachableTactic false
open Nat
  def n : ℕ :=
    3
  theorem assert_8899864990902702679 : 3 + 3 = 6 :=
    by
    trace "Automation Tactics hammer [] for goal: 3 + 3 = 6"
    simp_all only [Int.reduceAdd]
  theorem assert_14564769552762896125 : 3 * 3 = 9 :=
    by
    trace "Automation Tactics hammer [] for goal: 3 * 3 = 9"
    simp_all only [reduceMul]
  theorem assert_2568258167913292722 : n ^ 2 = 9 :=
    by
    trace "Automation Tactics hammer [] for goal: n ^ 2 = 9"
    rfl
  theorem assert_16227607202034847012 : ∀ (n : ℕ), n = 3 → n ^ 3 = 27 :=
    by
    trace "Automation Tactics hammer [] for goal: ∀ (n : ℕ), n = 3 → n ^ 3 = 27"
    intro n a
    subst a
    simp_all only [reducePow]
  theorem assert_12058675567322674293 : ∃ (n : ℕ), n + n = 6 ∧ n ^ 2 = 9 ∧ n ^ 3 = 27 :=
    by
    trace "Automation Tactics hammer [] for goal: ∃ n, n + n = 6 ∧ n ^ 2 = 9 ∧ n ^ 3 = 27"
    sorry
  def n :=
    Exists.fst assert_12058675567322674293
  theorem assert_10016525922687122342 : ∃ (n : ℕ), n + n = 6 ∧ n ^ 2 = 9 ∧ n ^ 3 = 27 :=
    Exists.snd assert_12058675567322674293