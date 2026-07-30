import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringJoiningWeldingFoundationCanonicalLaneLean

structure JoiningMetallurgyPackage where
  fusionZoneMicrostructure : Prop
  heatAffectedZone : Prop
  weldSolidificationCracking : Prop
  diffusionBonding : Prop
  mechanicalProperties : Prop

structure JoiningMetallurgyEvidence (J : JoiningMetallurgyPackage) where
  fusionZoneMicrostructureClosed : J.fusionZoneMicrostructure
  heatAffectedZoneClosed : J.heatAffectedZone
  weldSolidificationCrackingClosed : J.weldSolidificationCracking
  diffusionBondingClosed : J.diffusionBonding
  mechanicalPropertiesClosed : J.mechanicalProperties

def JoiningMetallurgyClosed (J : JoiningMetallurgyPackage) : Prop :=
  J.fusionZoneMicrostructure ∧ J.heatAffectedZone ∧ J.weldSolidificationCracking ∧ J.diffusionBonding ∧ J.mechanicalProperties

theorem joining_metallurgy_closed_from_evidence (J : JoiningMetallurgyPackage) (E : JoiningMetallurgyEvidence J) : JoiningMetallurgyClosed J := by
  exact And.intro E.fusionZoneMicrostructureClosed
    (And.intro E.heatAffectedZoneClosed
      (And.intro E.weldSolidificationCrackingClosed
        (And.intro E.diffusionBondingClosed E.mechanicalPropertiesClosed)))

end MaterialsEngineeringJoiningWeldingFoundationCanonicalLaneLean
end HautevilleHouse