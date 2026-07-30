import HautevilleHouse.FunctionsBoundedVariationGeneralizationsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace FunctionsBoundedVariationGeneralizationsCanonicalLaneLean

def ConstrainedBVClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_bv_endgame (A : AdmissibleClass) : ConstrainedBVClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FunctionsBoundedVariationGeneralizationsCanonicalLaneLean
end HautevilleHouse
