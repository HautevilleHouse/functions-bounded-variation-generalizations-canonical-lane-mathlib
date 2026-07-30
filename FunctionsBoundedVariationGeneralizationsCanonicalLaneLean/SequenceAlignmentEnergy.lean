import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsBoundedVariationGeneralizationsCanonicalLaneLean

structure SequenceAlignment (α : Type u) where
  source : List α
  target : List α
  gaps : ℕ
  matches : ℕ
  mismatches : ℕ

structure GapPenalty where
  openCost : ℝ
  extendCost : ℝ

def AlignmentEnergy (s : SequenceAlignment α) (g : GapPenalty) : ℝ :=
  (s.gaps : ℝ) * g.extendCost + (s.mismatches : ℝ) * g.openCost

theorem alignment_energy_nonneg (s : SequenceAlignment α) (g : GapPenalty) (hopen : g.openCost ≥ 0) (hextend : g.extendCost ≥ 0) : AlignmentEnergy s g ≥ 0 := by
  have h1 : (s.gaps : ℝ) * g.extendCost ≥ 0 := mul_nonneg (Nat.cast_nonneg _) hextend
  have h2 : (s.mismatches : ℝ) * g.openCost ≥ 0 := mul_nonneg (Nat.cast_nonneg _) hopen
  nlinarith

end FunctionsBoundedVariationGeneralizationsCanonicalLaneLean
end HautevilleHouse