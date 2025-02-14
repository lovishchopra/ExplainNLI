(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsInSuit (BoundSet) Bool)
(declare-fun WaitsFor (BoundSet BoundSet) Bool)
(declare-fun WaitsAt (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsInSuit a) (WaitsFor a b)))) (exists ((c BoundSet)) (exists ((d BoundSet)) (WaitsAt c d))))))
(check-sat)
(get-model)