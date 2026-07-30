import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringJoiningWeldingFoundationCanonicalLaneLean

structure CrystallographyPackage where
  bravaisLattice : Type u
  basisVectors : Type v
  reciprocalLattice : Type w
  crystalSystem : Prop
  spaceGroup : Prop
  unitCellVolume : Prop
  millerIndices : List Nat
  bravaisLatticeValid : crystalSystem → bravaisLattice
  reciprocalConstructed : reciprocalLattice

structure CrystallographyEvidence (C : CrystallographyPackage) where
  crystalSystemClosed : C.crystalSystem
  spaceGroupClosed : C.spaceGroup
  unitCellVolumeClosed : C.unitCellVolume

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.crystalSystem ∧ C.spaceGroup ∧ C.unitCellVolume

theorem crystallography_closed_from_evidence (C : CrystallographyPackage)
    (E : CrystallographyEvidence C) : CrystallographyClosed C := by
  exact And.intro E.crystalSystemClosed (And.intro E.spaceGroupClosed E.unitCellVolumeClosed)

end MaterialsEngineeringJoiningWeldingFoundationCanonicalLaneLean
end HautevilleHouse
