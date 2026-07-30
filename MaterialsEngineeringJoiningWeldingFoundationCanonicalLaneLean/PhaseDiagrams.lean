import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringJoiningWeldingFoundationCanonicalLaneLean

structure PhaseDiagram where
  phases : List String
  temperature : Type u
  composition : Type v
  phaseBoundaries : Prop
  eutecticPoint : Prop
  phaseRule : Prop

structure PhaseDiagramPackage where
  equilibriumCondition : Prop
  leverRule : Prop
  solidificationPath : Prop
  tttDiagram : Prop
  tttCctRelationship : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  equilibriumConditionClosed : P.equilibriumCondition
  leverRuleClosed : P.leverRule
  solidificationPathClosed : P.solidificationPath
  tttDiagramClosed : P.tttDiagram
  tttCctRelationshipClosed : P.tttCctRelationship

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.equilibriumCondition ∧ P.leverRule ∧ P.solidificationPath ∧ P.tttDiagram ∧ P.tttCctRelationship

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.equilibriumConditionClosed (And.intro E.leverRuleClosed (And.intro E.solidificationPathClosed (And.intro E.tttDiagramClosed E.tttCctRelationshipClosed)))

end MaterialsEngineeringJoiningWeldingFoundationCanonicalLaneLean
end HautevilleHouse
