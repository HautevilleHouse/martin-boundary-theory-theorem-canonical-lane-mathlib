import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartinBoundaryTheoryTheoremCanonicalLaneLean

structure MartinRepresentationPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  boundaryPackage : Prop
  positiveHarmonicFunction : manifold → ℝ
  integralRepresentation : Prop
  representingMeasure : Prop
  uniquenessOfMeasure : Prop

structure MartinRepresentationEvidence (R : MartinRepresentationPackage) where
  boundaryPackageClosed : R.boundaryPackage
  integralRepresentationClosed : R.integralRepresentation
  representingMeasureClosed : R.representingMeasure
  uniquenessOfMeasureClosed : R.uniquenessOfMeasure

def MartinRepresentationClosed (R : MartinRepresentationPackage) : Prop :=
  R.boundaryPackage ∧ R.integralRepresentation ∧ R.representingMeasure ∧ R.uniquenessOfMeasure

theorem martin_representation_closed_from_evidence (R : MartinRepresentationPackage)
    (E : MartinRepresentationEvidence R) : MartinRepresentationClosed R := by
  exact And.intro E.boundaryPackageClosed
    (And.intro E.integralRepresentationClosed
      (And.intro E.representingMeasureClosed E.uniquenessOfMeasureClosed))

end MartinBoundaryTheoryTheoremCanonicalLaneLean
end HautevilleHouse