import FunctionsBoundedVariationGeneralizationsCanonicalLaneLean.FinalTheorem
import FunctionsBoundedVariationGeneralizationsCanonicalLaneLean.BioinformaticsAnalyticFoundation

/-!
# Bioinformatics Route Layer
-/

namespace HautevilleHouse
namespace FunctionsBoundedVariationGeneralizationsCanonicalLaneLean

structure BioinformaticsRouteObligations where
  bvFunctional : Prop
  equilibrium : Prop
  linkageEvidence : Prop
  alignmentAlgo : Prop
  treeConstruction : Prop
  driftModel : Prop

def BioinformaticsRouteClosed (R : BioinformaticsRouteObligations) : Prop :=
  R.bvFunctional ∧ R.equilibrium ∧ R.linkageEvidence ∧ R.alignmentAlgo ∧ R.treeConstruction ∧ R.driftModel

def BioinformaticsAnalyticFoundation.toBioinformaticsRouteObligations (B : BioinformaticsAnalyticFoundation) : BioinformaticsRouteObligations :=
  { bvFunctional := BVFunctionPackageClosed B.bv
    equilibrium := HardyWeinbergPackageClosed B.hardyWeinberg
    linkageEvidence := LinkageAnalysisPackageClosed B.linkage
    alignmentAlgo := SequenceAlignmentPackageClosed B.alignment
    treeConstruction := PhylogeneticReconstructionPackageClosed B.phylogeny
    driftModel := GeneticDriftModelPackageClosed B.drift
  }

theorem bioinformatics_route_closed_from_foundation (B : BioinformaticsAnalyticFoundation) :
    BioinformaticsRouteClosed B.toBioinformaticsRouteObligations := by
  unfold BioinformaticsRouteClosed
  have h := B.h
  have hBv := B.bv_h
  have hHw := B.hardyWeinberg_h
  have hLink := B.linkage_h
  have hAlign := B.alignment_h
  have hPhylo := B.phylogeny_h
  have hDrift := B.drift_h
  simp [BioinformaticsAnalyticFoundationClosed, toBioinformaticsRouteObligations, BVFunctionPackageClosed, HardyWeinbergPackageClosed, LinkageAnalysisPackageClosed, SequenceAlignmentPackageClosed, PhylogeneticReconstructionPackageClosed, GeneticDriftModelPackageClosed] at *
  exact ⟨hBv, hHw, hLink, hAlign, hPhylo, hDrift⟩

end FunctionsBoundedVariationGeneralizationsCanonicalLaneLean
end HautevilleHouse