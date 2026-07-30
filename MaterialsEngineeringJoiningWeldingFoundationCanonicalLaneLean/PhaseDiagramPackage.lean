import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringJoiningWeldingFoundationCanonicalLaneLean

structure PhaseDiagramPackage where
  components : List String
  phases : List String
  temperatureRange : Prop
  compositionRange : Prop
  equilibriumLines : Prop
  invariantReactions : List String
  phaseRuleSatisfied : Prop
  temperatureRangeValid : temperatureRange
  compositionRangeValid : compositionRange

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  equilibriumLinesClosed : P.equilibriumLines
  invariantReactionsClosed : P.invariantReactions
  phaseRuleSatisfiedClosed : P.phaseRuleSatisfied

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.equilibriumLines ∧ P.invariantReactions ∧ P.phaseRuleSatisfied

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage)
    (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.equilibriumLinesClosed (And.intro E.invariantReactionsClosed E.phaseRuleSatisfiedClosed)

end MaterialsEngineeringJoiningWeldingFoundationCanonicalLaneLean
end HautevilleHouse
