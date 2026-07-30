import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsBoundedVariationGeneralizationsCanonicalLaneLean

structure VariationMeasurePackage where
  underlyingSpace : Type u
  sigmaAlgebra : Set (Set underlyingSpace)
  totalVariation : (underlyingSpace → ℝ) → ℝ
  positiveVariation : (underlyingSpace → ℝ) → ℝ
  negativeVariation : (underlyingSpace → ℝ) → ℝ
  variationFinite : Prop
  decompositionJordan : Prop

structure VariationMeasureEvidence (V : VariationMeasurePackage) where
  variationFiniteClosed : V.variationFinite
  decompositionJordanClosed : V.decompositionJordan

def VariationMeasureClosed (V : VariationMeasurePackage) : Prop :=
  V.variationFinite ∧ V.decompositionJordan

theorem variation_measure_closed_from_evidence (V : VariationMeasurePackage)
    (E : VariationMeasureEvidence V) : VariationMeasureClosed V := by
  exact And.intro E.variationFiniteClosed E.decompositionJordanClosed

end FunctionsBoundedVariationGeneralizationsCanonicalLaneLean
end HautevilleHouse