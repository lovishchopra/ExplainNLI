(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsWearingBlackHat (BoundSet) Bool)
(declare-fun IsWearingCoat (BoundSet) Bool)
(declare-fun MakesFace (BoundSet) Bool)
(declare-fun HasCrowdBehindHim (BoundSet) Bool)
(declare-fun IsStandingNearCrowd (BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (and (IsWearingBlackHat a) (and (IsWearingCoat a) (and (MakesFace a) (HasCrowdBehindHim a))))) (exists ((f BoundSet)) (IsStandingNearCrowd f)))))
(check-sat)
(get-model)