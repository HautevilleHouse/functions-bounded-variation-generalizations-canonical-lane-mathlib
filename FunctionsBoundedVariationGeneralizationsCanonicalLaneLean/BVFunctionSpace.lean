import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsBoundedVariationGeneralizationsCanonicalLaneLean

structure BVFunctionSpace where
  carrier : Type u
  norm : carrier → ℝ
  variation : carrier → ℝ
  seminormProperty : ∀ f : carrier, norm f ≥ 0
  variationBound : ∀ f : carrier, variation f ≥ 0

structure BVFunctionSpaceEvidence (B : BVFunctionSpace) where
  seminormPropertyClosed : ∀ f : B.carrier, B.norm f ≥ 0
  variationBoundClosed : ∀ f : B.carrier, B.variation f ≥ 0

def BVFunctionSpaceClosed (B : BVFunctionSpace) : Prop :=
  (∀ f : B.carrier, B.norm f ≥ 0) ∧ (∀ f : B.carrier, B.variation f ≥ 0)

theorem bv_function_space_closed_from_evidence (B : BVFunctionSpace) (E : BVFunctionSpaceEvidence B) : BVFunctionSpaceClosed B := by
  exact And.intro E.seminormPropertyClosed E.variationBoundClosed

end FunctionsBoundedVariationGeneralizationsCanonicalLaneLean
end HautevilleHouse
