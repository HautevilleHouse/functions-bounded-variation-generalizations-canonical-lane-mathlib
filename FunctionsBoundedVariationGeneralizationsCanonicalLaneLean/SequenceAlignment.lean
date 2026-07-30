import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsBoundedVariationGeneralizationsCanonicalLaneLean

structure SequenceAlignment where
  sequences : List (String)
  alignmentScore : ℝ
  gapPenalty : ℝ
  substitutionMatrix : String → String → ℝ
  optimalAlignment : List (String)

def AlignmentScoreClosed (A : SequenceAlignment) : Prop :=
  A.alignmentScore > 0 ∧ A.gapPenalty ≤ 0

structure AlignmentEvidence (A : SequenceAlignment) where
  alignmentScorePositive : A.alignmentScore > 0
  gapPenaltyNonPositive : A.gapPenalty ≤ 0

theorem alignment_closed_from_evidence (A : SequenceAlignment) (E : AlignmentEvidence A) :
    AlignmentScoreClosed A := by
  exact And.intro E.alignmentScorePositive E.gapPenaltyNonPositive

end FunctionsBoundedVariationGeneralizationsCanonicalLaneLean
end HautevilleHouse