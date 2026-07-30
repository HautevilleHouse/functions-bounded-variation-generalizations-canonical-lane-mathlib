import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FunctionsBoundedVariationGeneralizationsCanonicalLaneLean.BVFunction

namespace HautevilleHouse
namespace FunctionsBoundedVariationGeneralizationsCanonicalLaneLean

structure SBVFunctionPackage {B : BVFunctionPackage} where
  specialBVClass : Type u
  jumpPart : Type v
  cantorPart : Type w
  absolutelyContinuousPart : Type x
  decompositionExists : Prop
  jumpPartCountable : Prop

structure SBVFunctionEvidence {B : BVFunctionPackage} (S : SBVFunctionPackage B) where
  decompositionExistsClosed : S.decompositionExists
  jumpPartCountableClosed : S.jumpPartCountable

def SBVFunctionClosed {B : BVFunctionPackage} (S : SBVFunctionPackage B) : Prop :=
  S.decompositionExists ∧ S.jumpPartCountable

theorem sbv_function_closed_from_evidence {B : BVFunctionPackage}
    (S : SBVFunctionPackage B) (E : SBVFunctionEvidence S) : SBVFunctionClosed S :=
  And.intro E.decompositionExistsClosed E.jumpPartCountableClosed

end FunctionsBoundedVariationGeneralizationsCanonicalLaneLean
end HautevilleHouse