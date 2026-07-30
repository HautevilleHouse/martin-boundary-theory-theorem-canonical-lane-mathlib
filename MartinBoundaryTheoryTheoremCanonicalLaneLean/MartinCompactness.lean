import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartinBoundaryTheoryTheoremCanonicalLaneLean

structure MartinCompactnessPackage where
  potentialTheorySatisfied : Prop
  harmonicFunctionsSeparatePoints : Prop
  boundaryMetrizable : Prop
  positiveMinimalHarmonicExists : Prop
  compactificationCanonical : Prop

structure MartinCompactnessEvidence (C : MartinCompactnessPackage) where
  potentialTheorySatisfiedClosed : C.potentialTheorySatisfied
  harmonicFunctionsSeparatePointsClosed : C.harmonicFunctionsSeparatePoints
  boundaryMetrizableClosed : C.boundaryMetrizable
  positiveMinimalHarmonicExistsClosed : C.positiveMinimalHarmonicExists
  compactificationCanonicalClosed : C.compactificationCanonical

def MartinCompactnessClosed (C : MartinCompactnessPackage) : Prop :=
  C.potentialTheorySatisfied ∧ C.harmonicFunctionsSeparatePoints ∧ C.boundaryMetrizable ∧ C.positiveMinimalHarmonicExists ∧ C.compactificationCanonical

theorem martin_compactness_closed_from_evidence (C : MartinCompactnessPackage) (E : MartinCompactnessEvidence C) :
    MartinCompactnessClosed C := by
  exact And.intro E.potentialTheorySatisfiedClosed (And.intro E.harmonicFunctionsSeparatePointsClosed (And.intro E.boundaryMetrizableClosed (And.intro E.positiveMinimalHarmonicExistsClosed E.compactificationCanonicalClosed)))

end MartinBoundaryTheoryTheoremCanonicalLaneLean
end HautevilleHouse