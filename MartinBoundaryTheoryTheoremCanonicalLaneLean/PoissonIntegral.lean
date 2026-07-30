import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartinBoundaryTheoryTheoremCanonicalLaneLean

structure PoissonIntegralPackage where
  harmonicFunction : Type u
  poissonKernel : Type v
  poissonRepresentation : Prop
  boundaryRegularity : Prop
  uniqueness : Prop

structure PoissonIntegralEvidence (P : PoissonIntegralPackage) where
  poissonRepresentationClosed : P.poissonRepresentation
  boundaryRegularityClosed : P.boundaryRegularity
  uniquenessClosed : P.uniqueness

def PoissonIntegralClosed (P : PoissonIntegralPackage) : Prop :=
  P.poissonRepresentation ∧ P.boundaryRegularity ∧ P.uniqueness

theorem poisson_integral_closed_from_evidence
    (P : PoissonIntegralPackage) (E : PoissonIntegralEvidence P) :
    PoissonIntegralClosed P := by
  exact And.intro E.poissonRepresentationClosed
    (And.intro E.boundaryRegularityClosed E.uniquenessClosed)

end MartinBoundaryTheoryTheoremCanonicalLaneLean
end HautevilleHouse