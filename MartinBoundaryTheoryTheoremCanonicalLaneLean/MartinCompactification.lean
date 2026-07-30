import canonicalLaneMathlib.AdmissibleClass
import MartinBoundaryTheoryTheoremCanonicalLaneLean.MartinBoundary

namespace HautevilleHouse
namespace MartinBoundaryTheoryTheoremCanonicalLaneLean

structure MartinCompactificationPackage {X : Type u} (M : MartinBoundaryPackage X) where
  compactSpace : Type u
  embedding : X → compactSpace
  denseImage : DenseRange embedding
  boundaryIdentification : M.minimalBoundary ≃ compactSpace \ Set.range embedding
  continuousExtension : C(X, ℝ) → C(compactSpace, ℝ)
  extensionPreservesHarmonic : Prop
  extensionUnique : Prop

structure MartinCompactificationEvidence {X : Type u} {M : MartinBoundaryPackage X} (C : MartinCompactificationPackage M) where
  extensionPreservesHarmonicClosed : C.extensionPreservesHarmonic
  extensionUniqueClosed : C.extensionUnique

def MartinCompactificationClosed {X : Type u} {M : MartinBoundaryPackage X} (C : MartinCompactificationPackage M) : Prop :=
  C.extensionPreservesHarmonic ∧ C.extensionUnique

theorem martin_compactification_closed_from_evidence {X : Type u} {M : MartinBoundaryPackage X} (C : MartinCompactificationPackage M) (E : MartinCompactificationEvidence C) : MartinCompactificationClosed C := by
  exact And.intro E.extensionPreservesHarmonicClosed E.extensionUniqueClosed

end MartinBoundaryTheoryTheoremCanonicalLaneLean
end HautevilleHouse