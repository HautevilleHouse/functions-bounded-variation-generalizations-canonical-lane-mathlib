import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsBoundedVariationGeneralizationsCanonicalLaneLean

structure HedbergStarOperation where
  pointwiseLimit : Type u
  starOperator : pointwiseLimit → pointwiseLimit
  idempotence : ∀ f : pointwiseLimit, starOperator (starOperator f) = starOperator f
  monotonicity : ∀ f g : pointwiseLimit, f = g → starOperator f = starOperator g

structure HedbergStarEvidence (H : HedbergStarOperation) where
  idempotenceClosed : ∀ f : H.pointwiseLimit, H.starOperator (H.starOperator f) = H.starOperator f
  monotonicityClosed : ∀ f g : H.pointwiseLimit, f = g → H.starOperator f = H.starOperator g

def HedbergStarClosed (H : HedbergStarOperation) : Prop :=
  (∀ f : H.pointwiseLimit, H.starOperator (H.starOperator f) = H.starOperator f) ∧
  (∀ f g : H.pointwiseLimit, f = g → H.starOperator f = H.starOperator g)

theorem hedberg_star_closed_from_evidence (H : HedbergStarOperation) (E : HedbergStarEvidence H) : HedbergStarClosed H := by
  exact And.intro E.idempotenceClosed E.monotonicityClosed

end FunctionsBoundedVariationGeneralizationsCanonicalLaneLean
end HautevilleHouse
