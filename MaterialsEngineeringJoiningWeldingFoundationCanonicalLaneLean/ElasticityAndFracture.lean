import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringJoiningWeldingFoundationCanonicalLaneLean

structure ElasticModulus where
  youngsModulus : ℝ
  poissonsRatio : ℝ
  shearModulus : ℝ
  bulkModulus : ℝ

structure StressStrainCurve where
  yieldStrength : ℝ
  ultimateTensileStrength : ℝ
  fractureToughness : ℝ
  strainHardeningExponent : ℝ

structure FractureMechanics where
  stressIntensityFactor : ℝ
  crackInitiation : Prop
  crackPropagation : Prop
  parisLawConstant : ℝ

def FractureEvidence : Prop :=
  ElasticModulus.youngsModulus > 0 ∧ StressStrainCurve.fractureToughness > 0

end MaterialsEngineeringJoiningWeldingFoundationCanonicalLaneLean
end HautevilleHouse