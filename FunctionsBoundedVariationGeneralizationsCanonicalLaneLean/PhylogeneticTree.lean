import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsBoundedVariationGeneralizationsCanonicalLaneLean

structure PhylogeneticTreePackage where
  taxa : Type u
  treeTopology : Type v
  branchLengths : treeTopology → ℝ
  likelihoodFunction : Prop
  maximumParsimony : Prop

structure PhylogeneticTreeEvidence (P : PhylogeneticTreePackage) where
  likelihoodFunctionClosed : P.likelihoodFunction
  maximumParsimonyClosed : P.maximumParsimony

def PhylogeneticTreeClosed (P : PhylogeneticTreePackage) : Prop :=
  P.likelihoodFunction ∧ P.maximumParsimony

theorem phylogenetic_tree_closed_from_evidence (P : PhylogeneticTreePackage) (E : PhylogeneticTreeEvidence P) : PhylogeneticTreeClosed P := by
  exact And.intro E.likelihoodFunctionClosed E.maximumParsimonyClosed

end FunctionsBoundedVariationGeneralizationsCanonicalLaneLean
end HautevilleHouse
