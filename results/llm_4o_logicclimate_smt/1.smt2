(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun HasSignificantProblems (BoundSet) Bool)
(declare-fun HasGovernmentCorruption (BoundSet) Bool)
(declare-fun HasDomesticViolence (BoundSet) Bool)
(declare-fun HasChildAbuse (BoundSet) Bool)
(declare-fun HasSexTrafficking (BoundSet) Bool)
(declare-fun LacksLegalProvisionsProtectingWorkersRights (BoundSet) Bool)
(declare-fun HasHumanRightsIssues (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (and (HasSignificantProblems a) (and (HasGovernmentCorruption a) (and (HasDomesticViolence a) (and (HasChildAbuse a) (and (HasSexTrafficking a) (LacksLegalProvisionsProtectingWorkersRights a))))))) (and (forall ((i BoundSet)) (=> (HasSignificantProblems i) (HasHumanRightsIssues i))) (and (forall ((j BoundSet)) (=> (HasHumanRightsIssues j) (HasSignificantProblems j))) (and (forall ((k BoundSet)) (=> (HasGovernmentCorruption k) (HasHumanRightsIssues k))) (and (forall ((l BoundSet)) (=> (HasHumanRightsIssues l) (HasGovernmentCorruption l))) (and (forall ((m BoundSet)) (=> (HasDomesticViolence m) (HasHumanRightsIssues m))) (and (forall ((n BoundSet)) (=> (HasHumanRightsIssues n) (HasDomesticViolence n))) (and (forall ((o BoundSet)) (=> (HasChildAbuse o) (HasHumanRightsIssues o))) (and (forall ((p BoundSet)) (=> (HasHumanRightsIssues p) (HasChildAbuse p))) (and (forall ((q BoundSet)) (=> (HasSexTrafficking q) (HasHumanRightsIssues q))) (and (forall ((r BoundSet)) (=> (HasHumanRightsIssues r) (HasSexTrafficking r))) (and (forall ((s BoundSet)) (=> (LacksLegalProvisionsProtectingWorkersRights s) (HasHumanRightsIssues s))) (forall ((t BoundSet)) (=> (HasHumanRightsIssues t) (LacksLegalProvisionsProtectingWorkersRights t))))))))))))))) (exists ((a BoundSet)) (HasHumanRightsIssues a)))))
(check-sat)
(get-model)