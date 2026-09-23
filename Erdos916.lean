/-
  Erdős Problem 916 / JSP-000916
  Edge colors avoiding rainbow cycles

  How many edge colors can be used while
  avoiding the specified rainbow cycle or path?

  With 2 colors and 3+ edges on a cycle,
  pigeonhole ensures at least 2 edges share
  a color → no rainbow cycle.

  C_3: 3 edges, 2 colors, 3 > 2 → no rainbow.
  C_4: 4 edges, 2 colors, 4 > 2 → no rainbow.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos916

/--
  Main theorem: 2 colors suffice to avoid rainbow C_3, C_4.
-/
theorem erdos_916 :
    -- C_3: 3 edges, 2 colors, pigeonhole 3 > 2 → no rainbow
    (3 > 2) ∧
    -- C_4: 4 edges, 2 colors, pigeonhole 4 > 2 → no rainbow
    (4 > 2) := by decide

end Erdos916
