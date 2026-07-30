import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsBoundedVariationGeneralizationsCanonicalLaneLean

structure HarmonicFunctionPackage where
  domain : Type u
  topology : TopologicalSpace domain
  measure : Type v
  sobolevSpace : Type w
  energyFunctional : Type x
  harmonicityCondition : Prop
  dirichletFiniteEnergy : Prop

structure HarmonicFunctionEvidence (H : HarmonicFunctionPackage) where
  harmonicityConditionClosed : H.harmonicityCondition
  dirichletFiniteEnergyClosed : H.dirichletFiniteEnergy

def HarmonicFunctionClosed (H : HarmonicFunctionPackage) : Prop :=
  H.harmonicityCondition ∧ H.dirichletFiniteEnergy

theorem harmonic_function_closed_from_evidence (H : HarmonicFunctionPackage)
    (E : HarmonicFunctionEvidence H) : HarmonicFunctionClosed H :=
  And.intro E.harmonicityConditionClosed E.dirichletFiniteEnergyClosed

end FunctionsBoundedVariationGeneralizationsCanonicalLaneLean
end HautevilleHouse