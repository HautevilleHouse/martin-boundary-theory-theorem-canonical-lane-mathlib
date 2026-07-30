import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartinBoundaryTheoryTheoremCanonicalLaneLean

structure MartinAdmittedObject where
  greenianSpace : HarmonicFunctionOnGreenianSpace
  martinBoundary : MartinBoundaryPackage
  compactness : MartinCompactnessPackage
  representation : BoundaryRepresentationPackage
  conclusion : MartinBoundaryClosed martinBoundary ∧ MartinCompactnessClosed compactness ∧ BoundaryRepresentationClosed representation

structure AdmissibleClass where
  object : MartinAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MartinWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def MartinWitnessClosed (O : MartinAdmittedObject) : Prop :=
  O.conclusion

end MartinBoundaryTheoryTheoremCanonicalLaneLean
end HautevilleHouse