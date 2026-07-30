import FunctionsBoundedVariationGeneralizationsCanonicalLaneLean.GeneticDriftModel
import FunctionsBoundedVariationGeneralizationsCanonicalLaneLean.BVFunctionDefinition

/-!
# Bioinformatics Analytic Foundation
-/

namespace HautevilleHouse
namespace FunctionsBoundedVariationGeneralizationsCanonicalLaneLean

structure BioinformaticsAnalyticFoundation where
  bv : BVFunctionPackage
  hardyWeinberg : HardyWeinbergPackage
  linkage : LinkageAnalysisPackage
  alignment : SequenceAlignmentPackage
  phylogeny : PhylogeneticReconstructionPackage
  drift : GeneticDriftModelPackage

def BioinformaticsAnalyticFoundationClosed (B : BioinformaticsAnalyticFoundation) : Prop :=
  BVFunctionPackageClosed B.bv ∧
  HardyWeinbergPackageClosed B.hardyWeinberg ∧
  LinkageAnalysisPackageClosed B.linkage ∧
  SequenceAlignmentPackageClosed B.alignment ∧
  PhylogeneticReconstructionPackageClosed B.phylogeny ∧
  GeneticDriftModelPackageClosed B.drift

end FunctionsBoundedVariationGeneralizationsCanonicalLaneLean
end HautevilleHouse
