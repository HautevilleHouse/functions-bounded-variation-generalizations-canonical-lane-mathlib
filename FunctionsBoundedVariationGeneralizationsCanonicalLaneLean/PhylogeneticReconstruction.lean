import FunctionsBoundedVariationGeneralizationsCanonicalLaneLean.SequenceAlignment

/-!
# Phylogenetic Reconstruction Package
-/

namespace HautevilleHouse
namespace FunctionsBoundedVariationGeneralizationsCanonicalLaneLean

structure PhylogeneticReconstructionPackage where
  treeTopology : Type u
  branchLengths : List ℚ
  likelihoodScore : ℚ
  parsimonyScore : ℕ
  reconstructedTree : Prop

def PhylogeneticReconstructionPackageClosed (P : PhylogeneticReconstructionPackage) : Prop :=
  P.reconstructedTree ∧ P.likelihoodScore > 0

end FunctionsBoundedVariationGeneralizationsCanonicalLaneLean
end HautevilleHouse
