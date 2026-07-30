import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartinBoundaryTheoryTheoremCanonicalLaneLean

structure FatouTheoremPackage where
  nontangentialLimit : Prop
  existenceAlmostEverywhere : Prop
  boundaryFunction : Type u
  radialLimit : Prop

structure FatouTheoremEvidence (F : FatouTheoremPackage) where
  nontangentialLimitClosed : F.nontangentialLimit
  existenceAlmostEverywhereClosed : F.existenceAlmostEverywhere
  radialLimitClosed : F.radialLimit

def FatouTheoremClosed (F : FatouTheoremPackage) : Prop :=
  F.nontangentialLimit ∧ F.existenceAlmostEverywhere ∧ F.radialLimit

theorem fatou_theorem_closed_from_evidence
    (F : FatouTheoremPackage) (E : FatouTheoremEvidence F) :
    FatouTheoremClosed F := by
  exact And.intro E.nontangentialLimitClosed
    (And.intro E.existenceAlmostEverywhereClosed E.radialLimitClosed)

end MartinBoundaryTheoryTheoremCanonicalLaneLean
end HautevilleHouse