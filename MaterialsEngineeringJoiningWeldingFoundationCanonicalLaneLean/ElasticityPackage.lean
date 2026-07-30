import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringJoiningWeldingFoundationCanonicalLaneLean

structure ElasticityPackage where
  stressTensor : Type u
  strainTensor : Type v
  constitutiveLaw : Prop
  hookeTensor : Type w
  elasticModuli : Prop
  youngModulus : ℝ
  poissonRatio : ℝ
  constitutiveLawValid : constitutiveLaw
  hookeTensorSymmetric : hookeTensor
  elasticModuliValid : elasticModuli

structure ElasticityEvidence (E : ElasticityPackage) where
  constitutiveLawClosed : E.constitutiveLaw
  elasticModuliClosed : E.elasticModuli
  hookeTensorSymmetricClosed : E.hookeTensorSymmetric

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.constitutiveLaw ∧ E.elasticModuli ∧ E.hookeTensorSymmetric

theorem elasticity_closed_from_evidence (E : ElasticityPackage)
    (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.constitutiveLawClosed (And.intro Ev.elasticModuliClosed Ev.hookeTensorSymmetricClosed)

end MaterialsEngineeringJoiningWeldingFoundationCanonicalLaneLean
end HautevilleHouse
