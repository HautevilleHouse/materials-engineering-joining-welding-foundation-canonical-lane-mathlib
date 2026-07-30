import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringJoiningWeldingFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  WeldingWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MaterialsEngineeringJoiningWeldingFoundationCanonicalLaneLean
end HautevilleHouse