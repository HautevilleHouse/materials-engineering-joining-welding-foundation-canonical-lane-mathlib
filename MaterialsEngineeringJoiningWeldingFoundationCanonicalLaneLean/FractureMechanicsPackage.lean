import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringJoiningWeldingFoundationCanonicalLaneLean

structure FractureMechanicsPackage where
  stressIntensityFactor : Type u
  crackGeometry : Prop
  fractureToughness : ℝ
  loadingMode : Prop
  energyReleaseRate : ℝ
  crackPropagationCriteria : Prop
  crackGeometryValid : crackGeometry
  loadingModeValid : loadingMode
  crackPropagationCriteriaValid : crackPropagationCriteria

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  stressIntensityFactorClosed : F.stressIntensityFactor
  energyReleaseRateClosed : F.energyReleaseRate
  crackPropagationCriteriaClosed : F.crackPropagationCriteria

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.stressIntensityFactor ∧ F.energyReleaseRate ∧ F.crackPropagationCriteria

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage)
    (E : FractureMechanicsEvidence F) : FractureMechanicsClosed F := by
  exact And.intro E.stressIntensityFactorClosed (And.intro E.energyReleaseRateClosed E.crackPropagationCriteriaClosed)

end MaterialsEngineeringJoiningWeldingFoundationCanonicalLaneLean
end HautevilleHouse
