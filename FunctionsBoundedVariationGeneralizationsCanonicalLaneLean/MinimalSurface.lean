import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FunctionsBoundedVariationGeneralizationsCanonicalLaneLean.BVFunction

namespace HautevilleHouse
namespace FunctionsBoundedVariationGeneralizationsCanonicalLaneLean

structure MinimalSurfacePackage {B : BVFunctionPackage} where
  surface : Type u
  areaFunctional : Type v
  boundaryCondition : Type w
  minimalityCondition : Prop
  bvRegularity : Prop
  meanCurvatureZero : Prop

structure MinimalSurfaceEvidence {B : BVFunctionPackage} (M : MinimalSurfacePackage B) where
  minimalityConditionClosed : M.minimalityCondition
  bvRegularityClosed : M.bvRegularity
  meanCurvatureZeroClosed : M.meanCurvatureZero

def MinimalSurfaceClosed {B : BVFunctionPackage} (M : MinimalSurfacePackage B) : Prop :=
  M.minimalityCondition ∧ M.bvRegularity ∧ M.meanCurvatureZero

theorem minimal_surface_closed_from_evidence {B : BVFunctionPackage}
    (M : MinimalSurfacePackage B) (E : MinimalSurfaceEvidence M) : MinimalSurfaceClosed M :=
  And.intro E.minimalityConditionClosed
    (And.intro E.bvRegularityClosed E.meanCurvatureZeroClosed)

end FunctionsBoundedVariationGeneralizationsCanonicalLaneLean
end HautevilleHouse