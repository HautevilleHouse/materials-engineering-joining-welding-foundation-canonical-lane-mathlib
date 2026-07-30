import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringJoiningWeldingFoundationCanonicalLaneLean

structure JoiningFoundationPackage where
  wettability : Type u
  diffusionBonding : Type v
  mechanicalInterlocking : Type w
  wettabilityCharacterized : Prop
  diffusionModeled : Prop
  interlockingUnderstood : Prop

structure JoiningFoundationEvidence (P : JoiningFoundationPackage) where
  wettabilityCharacterizedClosed : P.wettabilityCharacterized
  diffusionModeledClosed : P.diffusionModeled
  interlockingUnderstoodClosed : P.interlockingUnderstood

def JoiningFoundationClosed (P : JoiningFoundationPackage) : Prop :=
  P.wettabilityCharacterized ∧ P.diffusionModeled ∧ P.interlockingUnderstood

theorem joining_foundation_closed_from_evidence (P : JoiningFoundationPackage)
    (E : JoiningFoundationEvidence P) : JoiningFoundationClosed P := by
  exact And.intro E.wettabilityCharacterizedClosed
    (And.intro E.diffusionModeledClosed E.interlockingUnderstoodClosed)

end MaterialsEngineeringJoiningWeldingFoundationCanonicalLaneLean
end HautevilleHouse