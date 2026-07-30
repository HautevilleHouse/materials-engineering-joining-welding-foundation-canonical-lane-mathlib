import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringJoiningWeldingFoundationCanonicalLaneLean

structure WeldingEnergyInput where
  power : Type u
  travelSpeed : Type v
  heatInput : Prop
  efficiency : Prop

structure WeldingMetallurgyPackage where
  heatAffectedZone : Prop
  weldMetalSolidification : Prop
  phaseTransformation : Prop
  residualStress : Prop
  weldDefects : Prop

structure WeldingMetallurgyEvidence (W : WeldingMetallurgyPackage) where
  heatAffectedZoneClosed : W.heatAffectedZone
  weldMetalSolidificationClosed : W.weldMetalSolidification
  phaseTransformationClosed : W.phaseTransformation
  residualStressClosed : W.residualStress
  weldDefectsClosed : W.weldDefects

def WeldingMetallurgyClosed (W : WeldingMetallurgyPackage) : Prop :=
  W.heatAffectedZone ∧ W.weldMetalSolidification ∧ W.phaseTransformation ∧ W.residualStress ∧ W.weldDefects

theorem welding_metallurgy_closed_from_evidence (W : WeldingMetallurgyPackage) (E : WeldingMetallurgyEvidence W) : WeldingMetallurgyClosed W := by
  exact And.intro E.heatAffectedZoneClosed (And.intro E.weldMetalSolidificationClosed (And.intro E.phaseTransformationClosed (And.intro E.residualStressClosed E.weldDefectsClosed)))

end MaterialsEngineeringJoiningWeldingFoundationCanonicalLaneLean
end HautevilleHouse
