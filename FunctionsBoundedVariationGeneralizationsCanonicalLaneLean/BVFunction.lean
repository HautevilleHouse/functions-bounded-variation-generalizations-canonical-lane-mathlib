import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsBoundedVariationGeneralizationsCanonicalLaneLean

structure BVFunctionPackage where
  domain : Type u
  topology : TopologicalSpace domain
  measure : Type v
  functionSpace : Type w
  variationSeminorm : Type x
  boundedVariationCondition : Prop
  weakDerivativeExists : Prop

structure BVFunctionEvidence (B : BVFunctionPackage) where
  boundedVariationConditionClosed : B.boundedVariationCondition
  weakDerivativeExistsClosed : B.weakDerivativeExists

def BVFunctionClosed (B : BVFunctionPackage) : Prop :=
  B.boundedVariationCondition ∧ B.weakDerivativeExists

theorem bv_function_closed_from_evidence (B : BVFunctionPackage)
    (E : BVFunctionEvidence B) : BVFunctionClosed B :=
  And.intro E.boundedVariationConditionClosed E.weakDerivativeExistsClosed

end FunctionsBoundedVariationGeneralizationsCanonicalLaneLean
end HautevilleHouse