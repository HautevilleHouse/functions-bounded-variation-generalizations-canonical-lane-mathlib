import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FunctionsBoundedVariationGeneralizationsCanonicalLaneLean.VariationMeasure

namespace HautevilleHouse
namespace FunctionsBoundedVariationGeneralizationsCanonicalLaneLean

structure ChainRulePackage where
  compositionSpace : Type u
  outerFunction : (ℝ → ℝ) → ℝ
  innerFunction : ℝ → ℝ
  chainRuleFormula : Prop
  variationCompositionBound : Prop

structure ChainRuleEvidence (C : ChainRulePackage) where
  chainRuleFormulaClosed : C.chainRuleFormula
  variationCompositionBoundClosed : C.variationCompositionBound

def ChainRuleClosed (C : ChainRulePackage) : Prop :=
  C.chainRuleFormula ∧ C.variationCompositionBound

theorem chain_rule_closed_from_evidence (C : ChainRulePackage)
    (E : ChainRuleEvidence C) : ChainRuleClosed C := by
  exact And.intro E.chainRuleFormulaClosed E.variationCompositionBoundClosed

end FunctionsBoundedVariationGeneralizationsCanonicalLaneLean
end HautevilleHouse