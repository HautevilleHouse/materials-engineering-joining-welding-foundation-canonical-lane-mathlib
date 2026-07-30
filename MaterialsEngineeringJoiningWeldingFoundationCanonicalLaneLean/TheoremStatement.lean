import MaterialsEngineeringJoiningWeldingFoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace MaterialsEngineeringJoiningWeldingFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure WeldingSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure WeldingAdmittedObject where
  space : WeldingSpace
  jointInterface : Prop
  thermalCycle : Prop
  phaseTransformation : Prop
  residualStress : Prop
  conclusion : jointInterface ∧ thermalCycle ∧ phaseTransformation ∧ residualStress

structure WeldingEndgameState where
  object : WeldingAdmittedObject

def WeldingWitnessClosed (O : WeldingAdmittedObject) : Prop :=
  O.jointInterface ∧ O.thermalCycle ∧ O.phaseTransformation ∧ O.residualStress

end MaterialsEngineeringJoiningWeldingFoundationCanonicalLaneLean
end HautevilleHouse