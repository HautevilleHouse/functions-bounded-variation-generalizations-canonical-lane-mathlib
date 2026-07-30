import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsBoundedVariationGeneralizationsCanonicalLaneLean

structure VariationNorm (X : Type u) [AddCommGroup X] [TopologicalSpace X] where
  variation : X → ℝ
  subadditive : ∀ x y : X, variation (x + y) ≤ variation x + variation y
  homogeneous : ∀ (t : ℝ) (x : X), variation (t • x) = |t| * variation x
  nonnegative : ∀ x : X, variation x ≥ 0
  zeroOnConstant : ∀ (c : X), (∀ (v : X), c + v = v) → variation c = 0

def TotalVariationClosure (X : Type u) [AddCommGroup X] [TopologicalSpace X] (V : VariationNorm X) : Prop :=
  V.subadditive ∧ V.homogeneous ∧ V.nonnegative ∧ V.zeroOnConstant

end FunctionsBoundedVariationGeneralizationsCanonicalLaneLean
end HautevilleHouse