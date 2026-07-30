import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringJoiningWeldingFoundationCanonicalLaneLean

structure WeldingMetallurgyPackage where
  heatAffectedZone : Prop
  fusionZone : Prop
  phaseTransformations : Prop
  solidificationStructure : Prop
  microhardnessProfile : Prop
  weldDefects : List String
  heatAffectedZoneValid : heatAffectedZone
  fusionZoneValid : fusionZone
  phaseTransformationsValid : phaseTransformations

structure WeldingMetallurgyEvidence (W : WeldingMetallurgyPackage) where
  heatAffectedZoneClosed : W.heatAffectedZone
  fusionZoneClosed : W.fusionZone
  solidificationStructureClosed : W.solidificationStructure
  microhardnessProfileClosed : W.microhardnessProfile

def WeldingMetallurgyClosed (W : WeldingMetallurgyPackage) : Prop :=
  W.heatAffectedZone ∧ W.fusionZone ∧ W.solidificationStructure ∧ W.microhardnessProfile

theorem welding_metallurgy_closed_from_evidence (W : WeldingMetallurgyPackage)
    (E : WeldingMetallurgyEvidence W) : WeldingMetallurgyClosed W := by
  exact And.intro E.heatAffectedZoneClosed (And.intro E.fusionZoneClosed
    (And.intro E.solidificationStructureClosed E.microhardnessProfileClosed))

end MaterialsEngineeringJoiningWeldingFoundationCanonicalLaneLean
end HautevilleHouse
