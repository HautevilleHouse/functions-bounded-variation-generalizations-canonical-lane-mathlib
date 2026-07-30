import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsBoundedVariationGeneralizationsCanonicalLaneLean

structure HardyLittlewoodMaximalFunction where
  domain : Type u
  measure : Type v
  maximalInequality : Prop
  weakTypeBound : Prop

structure HardyLittlewoodMaximalEvidence (H : HardyLittlewoodMaximalFunction) where
  maximalInequalityClosed : H.maximalInequality
  weakTypeBoundClosed : H.weakTypeBound

def HardyLittlewoodMaximalClosed (H : HardyLittlewoodMaximalFunction) : Prop :=
  H.maximalInequality ∧ H.weakTypeBound

theorem hardy_littlewood_maximal_closed_from_evidence (H : HardyLittlewoodMaximalFunction) (E : HardyLittlewoodMaximalEvidence H) : HardyLittlewoodMaximalClosed H := by
  exact And.intro E.maximalInequalityClosed E.weakTypeBoundClosed

end FunctionsBoundedVariationGeneralizationsCanonicalLaneLean
end HautevilleHouse
