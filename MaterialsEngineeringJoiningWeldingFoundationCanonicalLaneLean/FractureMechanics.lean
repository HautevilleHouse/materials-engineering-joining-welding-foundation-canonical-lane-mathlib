import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringJoiningWeldingFoundationCanonicalLaneLean

structure FracturePackage where
  stressIntensityFactor : Type u
  fractureToughness : Type v
  crackPropagationCriterion : Prop
  parisLaw : Prop
  fatigueLife : Prop

structure FractureEvidence (F : FracturePackage) where
  stressIntensityFactorClosed : F.stressIntensityFactor
  fractureToughnessClosed : F.fractureToughness
  crackPropagationCriterionClosed : F.crackPropagationCriterion
  parisLawClosed : F.parisLaw
  fatigueLifeClosed : F.fatigueLife

def FractureClosed (F : FracturePackage) : Prop :=
  F.stressIntensityFactor ∧ F.fractureToughness ∧ F.crackPropagationCriterion ∧ F.parisLaw ∧ F.fatigueLife

theorem fracture_closed_from_evidence (F : FracturePackage) (E : FractureEvidence F) : FractureClosed F := by
  exact And.intro E.stressIntensityFactorClosed (And.intro E.fractureToughnessClosed (And.intro E.crackPropagationCriterionClosed (And.intro E.parisLawClosed E.fatigueLifeClosed)))

end MaterialsEngineeringJoiningWeldingFoundationCanonicalLaneLean
end HautevilleHouse
