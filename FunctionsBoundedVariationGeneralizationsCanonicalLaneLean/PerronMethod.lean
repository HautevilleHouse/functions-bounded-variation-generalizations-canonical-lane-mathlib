import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FunctionsBoundedVariationGeneralizationsCanonicalLaneLean.HarmonicFunctions

namespace HautevilleHouse
namespace FunctionsBoundedVariationGeneralizationsCanonicalLaneLean

structure PerronMethodPackage {H : HarmonicFunctionPackage} where
  subsolutions : Type u
  supersolutions : Type v
  upperEnvelope : Type w
  lowerEnvelope : Type x
  perronSolution : Type y
  envelopeConverges : Prop
  perronSolutionHarmonic : Prop

structure PerronMethodEvidence {H : HarmonicFunctionPackage} (P : PerronMethodPackage H) where
  envelopeConvergesClosed : P.envelopeConverges
  perronSolutionHarmonicClosed : P.perronSolutionHarmonic

def PerronMethodClosed {H : HarmonicFunctionPackage} (P : PerronMethodPackage H) : Prop :=
  P.envelopeConverges ∧ P.perronSolutionHarmonic

theorem perron_method_closed_from_evidence {H : HarmonicFunctionPackage}
    (P : PerronMethodPackage H) (E : PerronMethodEvidence P) : PerronMethodClosed P :=
  And.intro E.envelopeConvergesClosed E.perronSolutionHarmonicClosed

end FunctionsBoundedVariationGeneralizationsCanonicalLaneLean
end HautevilleHouse