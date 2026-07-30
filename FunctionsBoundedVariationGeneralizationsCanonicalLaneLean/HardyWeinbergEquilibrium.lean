import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionsBoundedVariationGeneralizationsCanonicalLaneLean

structure HardyWeinbergPackage where
  population : Type u
  genotypeFrequencies : population → ℝ → ℝ → ℝ → Prop
  equilibriumCondition : Prop
  randomMatingAssumption : Prop
  chiSquareTest : Prop

structure HardyWeinbergEvidence (H : HardyWeinbergPackage) where
  equilibriumConditionClosed : H.equilibriumCondition
  randomMatingAssumptionClosed : H.randomMatingAssumption
  chiSquareTestClosed : H.chiSquareTest

def HardyWeinbergClosed (H : HardyWeinbergPackage) : Prop :=
  H.equilibriumCondition ∧ H.randomMatingAssumption ∧ H.chiSquareTest

theorem hardy_weinberg_closed_from_evidence (H : HardyWeinbergPackage) (E : HardyWeinbergEvidence H) : HardyWeinbergClosed H := by
  exact And.intro E.equilibriumConditionClosed (And.intro E.randomMatingAssumptionClosed E.chiSquareTestClosed)

end FunctionsBoundedVariationGeneralizationsCanonicalLaneLean
end HautevilleHouse
