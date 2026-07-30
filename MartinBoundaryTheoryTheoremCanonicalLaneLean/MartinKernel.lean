import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartinBoundaryTheoryTheoremCanonicalLaneLean

structure MartinKernelPackage where
  greensFunction : Type u
  martinKernel : Type v
  boundaryHarnack : Prop
  convergenceProperties : Prop
  integralRepresentation : Prop

structure MartinKernelEvidence (K : MartinKernelPackage) where
  boundaryHarnackClosed : K.boundaryHarnack
  convergencePropertiesClosed : K.convergenceProperties
  integralRepresentationClosed : K.integralRepresentation

def MartinKernelClosed (K : MartinKernelPackage) : Prop :=
  K.boundaryHarnack ∧ K.convergenceProperties ∧ K.integralRepresentation

theorem martin_kernel_closed_from_evidence
    (K : MartinKernelPackage) (E : MartinKernelEvidence K) :
    MartinKernelClosed K := by
  exact And.intro E.boundaryHarnackClosed
    (And.intro E.convergencePropertiesClosed E.integralRepresentationClosed)

end MartinBoundaryTheoryTheoremCanonicalLaneLean
end HautevilleHouse