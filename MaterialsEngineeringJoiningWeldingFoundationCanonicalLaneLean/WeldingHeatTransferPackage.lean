import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringJoiningWeldingFoundationCanonicalLaneLean

structure WeldingHeatTransferPackage where
  heatSourceModel : Prop
  thermalConductivity : ℝ
  specificHeat : ℝ
  density : ℝ
  temperatureField : Type u
  weldPoolGeometry : Prop
  coolingRate : ℝ
  heatSourceModelValid : heatSourceModel
  temperatureFieldComputed : temperatureField
  weldPoolGeometryValid : weldPoolGeometry

structure WeldingHeatTransferEvidence (W : WeldingHeatTransferPackage) where
  heatSourceModelClosed : W.heatSourceModel
  temperatureFieldClosed : W.temperatureField
  coolingRateClosed : W.coolingRate

def WeldingHeatTransferClosed (W : WeldingHeatTransferPackage) : Prop :=
  W.heatSourceModel ∧ W.temperatureField ∧ W.coolingRate

theorem welding_heat_transfer_closed_from_evidence (W : WeldingHeatTransferPackage)
    (E : WeldingHeatTransferEvidence W) : WeldingHeatTransferClosed W := by
  exact And.intro E.heatSourceModelClosed (And.intro E.temperatureFieldClosed E.coolingRateClosed)

end MaterialsEngineeringJoiningWeldingFoundationCanonicalLaneLean
end HautevilleHouse
