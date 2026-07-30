import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsBoundedVariationGeneralizationsCanonicalLaneLean

structure BoundedVariationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure BoundedVariationAdmittedObject where
  space : BoundedVariationSpace
  variationProperty : Prop
  functionSpaceModel : Type
  functionTopology : TopologicalSpace functionSpaceModel
  closureCondition : Prop
  conclusion : closureCondition

def BoundedVariationWitnessClosed (O : BoundedVariationAdmittedObject) : Prop :=
  O.closureCondition

end FunctionsBoundedVariationGeneralizationsCanonicalLaneLean
end HautevilleHouse