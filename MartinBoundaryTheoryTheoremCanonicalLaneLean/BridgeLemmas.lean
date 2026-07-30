import canonicalLaneMathlib.AdmissibleClass
import MartinBoundaryTheoryTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MartinBoundaryTheoryTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MartinWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MartinBoundaryTheoryTheoremCanonicalLaneLean
end HautevilleHouse