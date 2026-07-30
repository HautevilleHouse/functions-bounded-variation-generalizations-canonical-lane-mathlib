import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsBoundedVariationGeneralizationsCanonicalLaneLean

structure HardySpace (X : Type u) [NormedAddCommGroup X] where
  analytic : Submodule ℝ X
  antianalytic : Submodule ℝ X
  decompositionProperty : ∀ (x : X), ∃ (a : analytic) (b : antianalytic), a.1 + b.1 = x

def HardyDecompositionClosed (H : HardySpace X) : Prop := H.decompositionProperty

theorem hardy_decomposition_closed (H : HardySpace X) : HardyDecompositionClosed H := by
  exact H.decompositionProperty

end FunctionsBoundedVariationGeneralizationsCanonicalLaneLean
end HautevilleHouse