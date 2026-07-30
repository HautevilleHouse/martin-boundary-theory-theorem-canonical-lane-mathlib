import canonicalLaneMathlib.AdmissibleClass
import MartinBoundaryTheoryTheoremCanonicalLaneLean.MartinBoundary
import MartinBoundaryTheoryTheoremCanonicalLaneLean.MinimalFunctions
import MartinBoundaryTheoryTheoremCanonicalLaneLean.MartinCompactification

namespace HautevilleHouse
namespace MartinBoundaryTheoryTheoremCanonicalLaneLean

def ConstrainedMartinBoundaryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_martin_boundary_endgame (A : AdmissibleClass) : ConstrainedMartinBoundaryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MartinBoundaryTheoryTheoremCanonicalLaneLean
end HautevilleHouse