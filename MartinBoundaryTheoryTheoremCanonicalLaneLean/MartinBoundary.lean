import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartinBoundaryTheoryTheoremCanonicalLaneLean

structure HarmonicFunction (X : Type u) where
  carrier : X → ℝ
  harmonic : Prop

structure MartinBoundaryPackage (X : Type u) where
  space : X
  topology : TopologicalSpace X
  harmonicFunctions : Set (HarmonicFunction X)
  kernel : X → X → ℝ
  kernelPositive : kernel x y ≥ 0
  kernelHarmonicInFirst : ∀ y, HarmonicFunction (λ x => kernel x y)
  minimalBoundary : Set X
  integralRepresentation : Prop
  uniquenessOfRepresentation : Prop

structure MartinBoundaryEvidence {X : Type u} (M : MartinBoundaryPackage X) where
  integralRepresentationClosed : M.integralRepresentation
  uniquenessOfRepresentationClosed : M.uniquenessOfRepresentation

def MartinBoundaryClosed {X : Type u} (M : MartinBoundaryPackage X) : Prop :=
  M.integralRepresentation ∧ M.uniquenessOfRepresentation

theorem martin_boundary_closed_from_evidence {X : Type u} (M : MartinBoundaryPackage X) (E : MartinBoundaryEvidence M) : MartinBoundaryClosed M := by
  exact And.intro E.integralRepresentationClosed E.uniquenessOfRepresentationClosed

end MartinBoundaryTheoryTheoremCanonicalLaneLean
end HautevilleHouse