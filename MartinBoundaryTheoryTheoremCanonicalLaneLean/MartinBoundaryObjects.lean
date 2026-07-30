import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartinBoundaryTheoryTheoremCanonicalLaneLean

structure MartinBoundarySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MartinBoundaryAdmittedObject where
  space : MartinBoundarySpace
  harmonicFunctions : Prop
  minimalBoundary : Prop
  martinCompactification : Prop
  representationTheorem : Prop
  conclusion : representationTheorem

def MartinBoundaryWitnessClosed (O : MartinBoundaryAdmittedObject) : Prop :=
  O.representationTheorem

end MartinBoundaryTheoryTheoremCanonicalLaneLean
end HautevilleHouse