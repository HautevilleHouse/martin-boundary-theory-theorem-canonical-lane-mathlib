import MartinBoundaryTheoryTheoremCanonicalLaneLean.HarmonicFunctions

/-!
# Singularity Models Package
-/

namespace HautevilleHouse
namespace MartinBoundaryTheoryTheoremCanonicalLaneLean

structure MartinSingularityPackage {G : RiemannianCurvaturePackage}
    {M : MartinSpace G} (H : HarmonicFunctionsPackage M) where
  boundarySingularitiesClassified : Prop
  minimalMartinBoundary : Prop
  poissonIntegralRepresentation : Prop

structure MartinSingularityEvidence {G : RiemannianCurvaturePackage}
    {M : MartinSpace G} {H : HarmonicFunctionsPackage M}
    (Q : MartinSingularityPackage H) where
  boundarySingularitiesClassifiedClosed : Q.boundarySingularitiesClassified
  minimalMartinBoundaryClosed : Q.minimalMartinBoundary
  poissonIntegralRepresentationClosed : Q.poissonIntegralRepresentation

def MartinSingularityClosed {G : RiemannianCurvaturePackage}
    {M : MartinSpace G} {H : HarmonicFunctionsPackage M}
    (Q : MartinSingularityPackage H) : Prop :=
  Q.boundarySingularitiesClassified ∧ Q.minimalMartinBoundary ∧
  Q.poissonIntegralRepresentation

theorem martin_singularity_closed_from_evidence
    {G : RiemannianCurvaturePackage} {M : MartinSpace G}
    {H : HarmonicFunctionsPackage M}
    (Q : MartinSingularityPackage H) (E : MartinSingularityEvidence Q) :
    MartinSingularityClosed Q := by
  exact And.intro E.boundarySingularitiesClassifiedClosed
    (And.intro E.minimalMartinBoundaryClosed E.poissonIntegralRepresentationClosed)

end MartinBoundaryTheoryTheoremCanonicalLaneLean
end HautevilleHouse