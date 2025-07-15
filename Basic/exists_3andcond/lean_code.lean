import Mathlib
universe u v w u_1 u_2 u_3 u₁ u₂ u₃
set_option maxHeartbeats 10000000
set_option linter.unreachableTactic false
open Nat
  def n : ℕ :=
    3
  theorem assert_8722815530389745342 : n + n = 6 :=
    by
    trace "Automation Tactics hammer [] for goal: n + n = 6"
    rfl
    trace "Finished Automation Tactics hammer [] for goal: n + n = 6"
  theorem assert_2568258167913292722 : n ^ 2 = 9 :=
    by
    trace "Automation Tactics hammer [] for goal: n ^ 2 = 9"
    rfl
    trace "Finished Automation Tactics hammer [] for goal: n ^ 2 = 9"
  theorem assert_3297844124007290231 : n ^ 3 = 27 :=
    by
    trace "Automation Tactics hammer [] for goal: n ^ 3 = 27"
    rfl
    trace "Finished Automation Tactics hammer [] for goal: n ^ 3 = 27"
  theorem assert_233692461693078492 : ∃ (n : ℕ), n = 3 ∧ n + n = 6 ∧ n ^ 2 = 9 ∧ n ^ 3 = 27 :=
    by
    trace "Automation Tactics hammer [] for goal: ∃ n, n = 3 ∧ n + n = 6 ∧ n ^ 2 = 9 ∧ n ^ 3 = 27"
    simp_all only [exists_eq_left, reduceAdd, reducePow, and_self]
    trace "Finished Automation Tactics hammer [] for goal: ∃ n, n = 3 ∧ n + n = 6 ∧ n ^ 2 = 9 ∧ n ^ 3 = 27"
  def n :=
    Exists.fst assert_233692461693078492
  theorem assert_5691105192523953611 : ∃ (n : ℕ), n = 3 ∧ n + n = 6 ∧ n ^ 2 = 9 ∧ n ^ 3 = 27 :=
    Exists.snd assert_233692461693078492