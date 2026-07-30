import MartinBoundaryTheoryTheoremCanonicalLaneLean.RiemannianCurvature

/-!
# Martin Space Package
-/

namespace HautevilleHouse
namespace MartinBoundaryTheoryTheoremCanonicalLaneLean

structure MartinSpace (G : RiemannianCurvaturePackage) where
  manifold : G.manifold
  topology : G.topology
  metric : G.metric
  greenFunctionDefined : Prop
  martinCompactification : Prop
  boundaryRepresentation : Prop

def MartinBoundaryWitnessClosed (M : MartinSpace (by exact default)) : Prop :=
  M.boundaryRepresentation

end MartinBoundaryTheoryTheoremCanonicalLaneLean
end HautevilleHouse