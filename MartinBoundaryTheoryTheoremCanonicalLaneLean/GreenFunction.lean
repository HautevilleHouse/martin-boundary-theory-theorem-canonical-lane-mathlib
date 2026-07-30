import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartinBoundaryTheoryTheoremCanonicalLaneLean

structure GreenFunctionPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  metric : Type v
  laplacianDefined : Prop
  greenFunction : Prop
  symmetric : Prop
  positive : Prop
  fundamentalSolution : Prop

structure GreenFunctionEvidence (G : GreenFunctionPackage) where
  laplacianDefinedClosed : G.laplacianDefined
  greenFunctionClosed : G.greenFunction
  symmetricClosed : G.symmetric
  positiveClosed : G.positive
  fundamentalSolutionClosed : G.fundamentalSolution

def GreenFunctionClosed (G : GreenFunctionPackage) : Prop :=
  G.laplacianDefined ∧ G.greenFunction ∧ G.symmetric ∧ G.positive ∧ G.fundamentalSolution

theorem green_function_closed_from_evidence (G : GreenFunctionPackage)
    (E : GreenFunctionEvidence G) : GreenFunctionClosed G := by
  exact And.intro E.laplacianDefinedClosed
    (And.intro E.greenFunctionClosed
      (And.intro E.symmetricClosed
        (And.intro E.positiveClosed E.fundamentalSolutionClosed)))

end MartinBoundaryTheoryTheoremCanonicalLaneLean
end HautevilleHouse