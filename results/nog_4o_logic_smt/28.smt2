(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsAthletic (BoundSet) Bool)
(declare-fun Runs (BoundSet) Bool)
(declare-fun IsRunning (BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (and (IsAthletic a) (Runs a))) (exists ((a BoundSet)) (and (IsRunning a) (IsAthletic a))))))
(check-sat)
(get-model)