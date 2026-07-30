import FunctionsBoundedVariationGeneralizationsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace FunctionsBoundedVariationGeneralizationsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure BVSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure BVAdmittedObject where
  space : BVSpace
  functionSpace : Type
  variationFunctionalDefined : Prop
  generalBVClassOnFiniteInterval : Prop
  conclusion : generalBVClassOnFiniteInterval

structure BVEndgameState where
  object : BVAdmittedObject

def BVWitnessClosed (O : BVAdmittedObject) : Prop :=
  O.generalBVClassOnFiniteInterval

end FunctionsBoundedVariationGeneralizationsCanonicalLaneLean
end HautevilleHouse
