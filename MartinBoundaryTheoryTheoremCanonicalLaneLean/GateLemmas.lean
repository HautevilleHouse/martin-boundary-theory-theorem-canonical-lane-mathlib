import canonicalLaneMathlib.AdmissibleClass
import MartinBoundaryTheoryTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace MartinBoundaryTheoryTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end MartinBoundaryTheoryTheoremCanonicalLaneLean
end HautevilleHouse