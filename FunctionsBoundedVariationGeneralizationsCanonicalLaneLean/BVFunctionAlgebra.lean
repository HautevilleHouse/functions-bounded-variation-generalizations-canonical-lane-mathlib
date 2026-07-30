import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsBoundedVariationGeneralizationsCanonicalLaneLean

structure BVFunction (X : Type u) [NormedAddCommGroup X] where
  domain : Set X
  variation : ℝ
  variationFinite : variation < ∞

structure BVAlgebra (X : Type u) [NormedAddCommGroup X] where
  functions : Set (BVFunction X)
  closedUnderAddition : ∀ f g ∈ functions, (mk (f.domain ∩ g.domain) (f.variation + g.variation) (by
    have hf : f.variation < ∞ := f.variationFinite
    have hg : g.variation < ∞ := g.variationFinite
    have : f.variation + g.variation < ∞ := by
      exact add_lt_top.mpr ⟨hf, hg⟩
    exact this
  )) ∈ functions

structure BVFAlgebraEvidence (X : Type u) [NormedAddCommGroup X] (A : BVAlgebra X) where
  funcs : A.functions
  closedUnderAdditionClosed : A.closedUnderAddition

theorem bv_algebra_from_evidence (X : Type u) [NormedAddCommGroup X] (A : BVAlgebra X) (E : BVFAlgebraEvidence X A) : A.closedUnderAddition := E.closedUnderAdditionClosed

end FunctionsBoundedVariationGeneralizationsCanonicalLaneLean
end HautevilleHouse