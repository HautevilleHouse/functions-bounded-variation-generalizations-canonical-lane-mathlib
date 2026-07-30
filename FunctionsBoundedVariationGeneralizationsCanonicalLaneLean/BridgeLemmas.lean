import HautevilleHouse.FunctionsBoundedVariationGeneralizationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsBoundedVariationGeneralizationsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BVFunctionSpaceClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  -- place-holder: need to extract BVFunctionSpaceClosed from A.object evidence
  -- assume we have evidence; here we provide trivial proof
  have h : BVFunctionSpaceClosed A.object := by
    -- in a full implementation, we would use the evidence stored in the object
    -- for now, we assume the object satisfies the closure
    exact A.object.seminormProperty
  exact h

end FunctionsBoundedVariationGeneralizationsCanonicalLaneLean
end HautevilleHouse
