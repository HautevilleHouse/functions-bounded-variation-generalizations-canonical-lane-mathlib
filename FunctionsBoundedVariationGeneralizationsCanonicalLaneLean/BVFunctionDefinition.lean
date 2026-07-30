import FunctionsBoundedVariationGeneralizationsCanonicalLaneLean.RiemannianCurvature

/-!
# Functions of Bounded Variation Definition Package
-/

namespace HautevilleHouse
namespace FunctionsBoundedVariationGeneralizationsCanonicalLaneLean

structure BVFunctionPackage where
  domain : Type u
  codomain : Type v
  variation : Type w
  totalVariationFinite : Prop
  decompositionIntoJordanComponents : Prop

def BVFunctionPackageClosed (B : BVFunctionPackage) : Prop :=
  B.totalVariationFinite ∧ B.decompositionIntoJordanComponents

end FunctionsBoundedVariationGeneralizationsCanonicalLaneLean
end HautevilleHouse
