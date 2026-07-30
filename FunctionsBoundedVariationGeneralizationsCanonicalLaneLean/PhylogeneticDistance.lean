import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsBoundedVariationGeneralizationsCanonicalLaneLean

structure Tree (α : Type u) where
  nodes : List α
  edges : List (α × α × ℝ)

structure PhylogeneticDistance (α : Type u) where
  pairwiseDistances : (α × α) → ℝ
  symmetry : ∀ x y : α, pairwiseDistances (x, y) = pairwiseDistances (y, x)
  triangleInequality : ∀ x y z : α, pairwiseDistances (x, z) ≤ pairwiseDistances (x, y) + pairwiseDistances (y, z)
  nonnegativity : ∀ x y : α, pairwiseDistances (x, y) ≥ 0

theorem phylogenetic_distance_closed (α : Type u) (P : PhylogeneticDistance α) : 
  P.symmetry ∧ P.triangleInequality ∧ P.nonnegativity := by
  exact ⟨P.symmetry, P.triangleInequality, P.nonnegativity⟩

end FunctionsBoundedVariationGeneralizationsCanonicalLaneLean
end HautevilleHouse