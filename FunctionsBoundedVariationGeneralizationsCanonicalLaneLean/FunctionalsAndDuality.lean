import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FunctionsBoundedVariationGeneralizationsCanonicalLaneLean.VariationMeasure

namespace HautevilleHouse
namespace FunctionsBoundedVariationGeneralizationsCanonicalLaneLean

structure FunctionalsAndDualityPackage where
  functionSpace : Type u
  dualSpace : Type v
  rieszRepresentation : Prop
  boundedVariationDual : Prop

structure FunctionalsAndDualityEvidence (F : FunctionalsAndDualityPackage) where
  rieszRepresentationClosed : F.rieszRepresentation
  boundedVariationDualClosed : F.boundedVariationDual

def FunctionalsAndDualityClosed (F : FunctionalsAndDualityPackage) : Prop :=
  F.rieszRepresentation ∧ F.boundedVariationDual

theorem functionals_and_duality_closed_from_evidence (F : FunctionalsAndDualityPackage)
    (E : FunctionalsAndDualityEvidence F) : FunctionalsAndDualityClosed F := by
  exact And.intro E.rieszRepresentationClosed E.boundedVariationDualClosed

end FunctionsBoundedVariationGeneralizationsCanonicalLaneLean
end HautevilleHouse