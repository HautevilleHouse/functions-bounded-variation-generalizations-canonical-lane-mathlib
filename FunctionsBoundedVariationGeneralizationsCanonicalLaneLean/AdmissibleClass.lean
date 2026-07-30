import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsBoundedVariationGeneralizationsCanonicalLaneLean

structure AdmissibleClass where
  object : BVFunctionSpace
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BVFunctionSpaceClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FunctionsBoundedVariationGeneralizationsCanonicalLaneLean
end HautevilleHouse
