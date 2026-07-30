import MartinBoundaryTheoryTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace MartinBoundaryTheoryTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MartinSpaceData where
  carrier : Type
  topology : TopologicalSpace carrier

structure MartinBoundaryAdmittedObject where
  space : MartinSpaceData
  harmonicFunctionsClassified : Prop
  boundaryIdentified : Prop
  martinRepresentation : Prop
  conclusion : martinRepresentation

structure MartinBoundaryEndgameState where
  object : MartinBoundaryAdmittedObject

def MartinBoundaryWitnessClosed (O : MartinBoundaryAdmittedObject) : Prop :=
  O.martinRepresentation

end MartinBoundaryTheoryTheoremCanonicalLaneLean
end HautevilleHouse