import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FunctionsBoundedVariationGeneralizationsCanonicalLaneLean.VariationMeasure

namespace HautevilleHouse
namespace FunctionsBoundedVariationGeneralizationsCanonicalLaneLean

structure HellySelectionPackage where
  sequenceSpace : Type u
  pointwiseConvergentSubsequence : Prop
  limitFunctionBoundedVariation : Prop

structure HellySelectionEvidence (H : HellySelectionPackage) where
  pointwiseConvergentSubsequenceClosed : H.pointwiseConvergentSubsequence
  limitFunctionBoundedVariationClosed : H.limitFunctionBoundedVariation

def HellySelectionClosed (H : HellySelectionPackage) : Prop :=
  H.pointwiseConvergentSubsequence ∧ H.limitFunctionBoundedVariation

theorem helly_selection_closed_from_evidence (H : HellySelectionPackage)
    (E : HellySelectionEvidence H) : HellySelectionClosed H := by
  exact And.intro E.pointwiseConvergentSubsequenceClosed E.limitFunctionBoundedVariationClosed

end FunctionsBoundedVariationGeneralizationsCanonicalLaneLean
end HautevilleHouse