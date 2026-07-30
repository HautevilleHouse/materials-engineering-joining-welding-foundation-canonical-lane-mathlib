import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringJoiningWeldingFoundationCanonicalLaneLean

structure WeldingPhysicsPackage where
  heatSourceModel : Prop
  weldPoolFluidFlow : Prop
  solidificationBehavior : Prop
  thermalCycle : Prop
  residualStress : Prop

structure WeldingPhysicsEvidence (W : WeldingPhysicsPackage) where
  heatSourceModelClosed : W.heatSourceModel
  weldPoolFluidFlowClosed : W.weldPoolFluidFlow
  solidificationBehaviorClosed : W.solidificationBehavior
  thermalCycleClosed : W.thermalCycle
  residualStressClosed : W.residualStress

def WeldingPhysicsClosed (W : WeldingPhysicsPackage) : Prop :=
  W.heatSourceModel ∧ W.weldPoolFluidFlow ∧ W.solidificationBehavior ∧ W.thermalCycle ∧ W.residualStress

theorem welding_physics_closed_from_evidence (W : WeldingPhysicsPackage) (E : WeldingPhysicsEvidence W) : WeldingPhysicsClosed W := by
  exact And.intro E.heatSourceModelClosed
    (And.intro E.weldPoolFluidFlowClosed
      (And.intro E.solidificationBehaviorClosed
        (And.intro E.thermalCycleClosed E.residualStressClosed)))

end MaterialsEngineeringJoiningWeldingFoundationCanonicalLaneLean
end HautevilleHouse