import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartinBoundaryTheoryTheoremCanonicalLaneLean

structure HarmonicFunctionOnGreenianSpace where
  space : Type u
  topology : TopologicalSpace space
  greenian : Prop
  hasLocalHarnackInequality : Prop
  sheafProperty : Prop
  harmonicFunctionsComplete : Prop

structure HarmonicFunctionEvidence (H : HarmonicFunctionOnGreenianSpace) where
  greenianClosed : H.greenian
  hasLocalHarnackInequalityClosed : H.hasLocalHarnackInequality
  sheafPropertyClosed : H.sheafProperty
  harmonicFunctionsCompleteClosed : H.harmonicFunctionsComplete

def HarmonicFunctionClosed (H : HarmonicFunctionOnGreenianSpace) : Prop :=
  H.greenian ∧ H.hasLocalHarnackInequality ∧ H.sheafProperty ∧ H.harmonicFunctionsComplete

theorem harmonic_function_closed_from_evidence (H : HarmonicFunctionOnGreenianSpace) (E : HarmonicFunctionEvidence H) :
    HarmonicFunctionClosed H := by
  exact And.intro E.greenianClosed (And.intro E.hasLocalHarnackInequalityClosed (And.intro E.sheafPropertyClosed E.harmonicFunctionsCompleteClosed))

end MartinBoundaryTheoryTheoremCanonicalLaneLean
end HautevilleHouse