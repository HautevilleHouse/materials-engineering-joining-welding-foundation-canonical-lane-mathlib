import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringJoiningWeldingFoundationCanonicalLaneLean

structure CrystalStructurePackage where
  bravaisLattice : Type u
  latticeParameters : Type v
  basisAtoms : Type w
  symmetryGroup : Type x
  bravaisLatticeClassified : Prop
  latticeParametersFixed : Prop
  basisAtomsDefined : Prop

structure CrystalStructureEvidence (P : CrystalStructurePackage) where
  bravaisLatticeClassifiedClosed : P.bravaisLatticeClassified
  latticeParametersFixedClosed : P.latticeParametersFixed
  basisAtomsDefinedClosed : P.basisAtomsDefined

def CrystalStructureClosed (P : CrystalStructurePackage) : Prop :=
  P.bravaisLatticeClassified ∧ P.latticeParametersFixed ∧ P.basisAtomsDefined

theorem crystal_structure_closed_from_evidence (P : CrystalStructurePackage)
    (E : CrystalStructureEvidence P) : CrystalStructureClosed P := by
  exact And.intro E.bravaisLatticeClassifiedClosed
    (And.intro E.latticeParametersFixedClosed E.basisAtomsDefinedClosed)

end MaterialsEngineeringJoiningWeldingFoundationCanonicalLaneLean
end HautevilleHouse