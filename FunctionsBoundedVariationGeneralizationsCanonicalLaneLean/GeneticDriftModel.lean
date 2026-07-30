import FunctionsBoundedVariationGeneralizationsCanonicalLaneLean.PhylogeneticReconstruction

/-!
# Genetic Drift Model Package
-/

namespace HautevilleHouse
namespace FunctionsBoundedVariationGeneralizationsCanonicalLaneLean

structure GeneticDriftModelPackage where
  effectivePopulationSize : ℕ
  fixationProbability : ℚ
  timeToFixation : ℚ
  alleleFrequencyTrajectory : Type u
  driftConvergence : Prop

def GeneticDriftModelPackageClosed (G : GeneticDriftModelPackage) : Prop :=
  G.driftConvergence ∧ G.timeToFixation > 0

end FunctionsBoundedVariationGeneralizationsCanonicalLaneLean
end HautevilleHouse
