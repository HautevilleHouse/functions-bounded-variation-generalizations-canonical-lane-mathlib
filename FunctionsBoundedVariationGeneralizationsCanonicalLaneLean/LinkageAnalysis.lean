import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsBoundedVariationGeneralizationsCanonicalLaneLean

structure LinkageAnalysis where
  markerData : Type u
  recombinationFraction : ℝ
  lodScore : ℝ
  linkagePresent : Prop

def LinkageClosed (L : LinkageAnalysis) : Prop :=
  L.lodScore > 3.0 ∧ L.recombinationFraction < 0.5

structure LinkageEvidence (L : LinkageAnalysis) where
  lodScoreExceedsThreshold : L.lodScore > 3.0
  recombinationFractionBelowHalf : L.recombinationFraction < 0.5

theorem linkage_closed_from_evidence (L : LinkageAnalysis) (E : LinkageEvidence L) :
    LinkageClosed L := by
  exact And.intro E.lodScoreExceedsThreshold E.recombinationFractionBelowHalf

end FunctionsBoundedVariationGeneralizationsCanonicalLaneLean
end HautevilleHouse