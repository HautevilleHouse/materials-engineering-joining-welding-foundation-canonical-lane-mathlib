import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringJoiningWeldingFoundationCanonicalLaneLean

structure CrystalStructure where
  latticeType : String
  basisVectors : Type
  motifPositions : Type
  bravaisLattice : Prop
  systematicAbsences : Prop

structure PhaseDiagram where
  temperatureRange : Type
  compositionRange : Type
  phaseBoundaries : Prop
  eutecticPoints : Prop
  peritecticPoints : Prop

structure CrystallographyEvidence where
  crystalStructureDetermined : Prop
  phaseDiagramMapped : Prop
  transformationKinetics : Prop

end MaterialsEngineeringJoiningWeldingFoundationCanonicalLaneLean
end HautevilleHouse