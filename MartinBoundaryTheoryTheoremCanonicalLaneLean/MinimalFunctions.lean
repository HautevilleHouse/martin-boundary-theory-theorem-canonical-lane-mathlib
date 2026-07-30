import canonicalLaneMathlib.AdmissibleClass
import MartinBoundaryTheoryTheoremCanonicalLaneLean.MartinBoundary

namespace HautevilleHouse
namespace MartinBoundaryTheoryTheoremCanonicalLaneLean

structure MinimalFunctionPackage {X : Type u} (M : MartinBoundaryPackage X) where
  minimalFunction : HarmonicFunction X
  minimalityCondition : Prop
  normalization : Prop
  boundaryPoint : M.minimalBoundary

structure MinimalFunctionEvidence {X : Type u} {M : MartinBoundaryPackage X} (F : MinimalFunctionPackage M) where
  minimalityConditionClosed : F.minimalityCondition
  normalizationClosed : F.normalization

def MinimalFunctionClosed {X : Type u} {M : MartinBoundaryPackage X} (F : MinimalFunctionPackage M) : Prop :=
  F.minimalityCondition ∧ F.normalization

theorem minimal_function_closed_from_evidence {X : Type u} {M : MartinBoundaryPackage X} (F : MinimalFunctionPackage M) (E : MinimalFunctionEvidence F) : MinimalFunctionClosed F := by
  exact And.intro E.minimalityConditionClosed E.normalizationClosed

end MartinBoundaryTheoryTheoremCanonicalLaneLean
end HautevilleHouse