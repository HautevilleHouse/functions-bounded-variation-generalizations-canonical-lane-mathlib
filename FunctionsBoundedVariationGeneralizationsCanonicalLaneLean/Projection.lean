import FunctionsBoundedVariationGeneralizationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsBoundedVariationGeneralizationsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def bvProjection : Projection BVEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem bv_projection_idempotent (x : BVEndgameState) :
    bvProjection.toFun (bvProjection.toFun x) = bvProjection.toFun x := by
  exact bvProjection.idempotent x

end FunctionsBoundedVariationGeneralizationsCanonicalLaneLean
end HautevilleHouse
