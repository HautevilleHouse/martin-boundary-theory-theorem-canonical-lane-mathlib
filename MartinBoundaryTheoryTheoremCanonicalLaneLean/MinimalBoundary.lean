import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartinBoundaryTheoryTheoremCanonicalLaneLean

structure MinimalBoundaryPackage where
  minimalHarmonicFunctions : Prop
  boundaryRepresentation : Prop
  uniqueness : Prop
  extremalDecomposition : Prop

structure MinimalBoundaryEvidence (M : MinimalBoundaryPackage) where
  minimalHarmonicFunctionsClosed : M.minimalHarmonicFunctions
  boundaryRepresentationClosed : M.boundaryRepresentation
  uniquenessClosed : M.uniqueness
  extremalDecompositionClosed : M.extremalDecomposition

def MinimalBoundaryClosed (M : MinimalBoundaryPackage) : Prop :=
  M.minimalHarmonicFunctions ∧ M.boundaryRepresentation ∧
  M.uniqueness ∧ M.extremalDecomposition

theorem minimal_boundary_closed_from_evidence (M : MinimalBoundaryPackage)
    (E : MinimalBoundaryEvidence M) : MinimalBoundaryClosed M := by
  exact And.intro E.minimalHarmonicFunctionsClosed
    (And.intro E.boundaryRepresentationClosed
      (And.intro E.uniquenessClosed E.extremalDecompositionClosed))

end MartinBoundaryTheoryTheoremCanonicalLaneLean
end HautevilleHouse