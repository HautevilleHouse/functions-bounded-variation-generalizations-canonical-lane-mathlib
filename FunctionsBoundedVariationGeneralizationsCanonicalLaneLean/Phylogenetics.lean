import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsBoundedVariationGeneralizationsCanonicalLaneLean

structure PhylogeneticTree where
  species : List (String)
  distanceMatrix : String → String → ℝ
  treeTopology : List (String × String)
  branchLengths : (String × String) → ℝ
  likelihood : ℝ

def TreeLikelihoodClosed (T : PhylogeneticTree) : Prop :=
  T.likelihood > 0 ∧ (∀ (ab : String × String), T.branchLengths ab ≥ 0)

structure TreeEvidence (T : PhylogeneticTree) where
  likelihoodPositive : T.likelihood > 0
  branchLengthsNonnegative : ∀ (ab : String × String), T.branchLengths ab ≥ 0

theorem tree_closed_from_evidence (T : PhylogeneticTree) (E : TreeEvidence T) :
    TreeLikelihoodClosed T := by
  exact And.intro E.likelihoodPositive E.branchLengthsNonnegative

end FunctionsBoundedVariationGeneralizationsCanonicalLaneLean
end HautevilleHouse