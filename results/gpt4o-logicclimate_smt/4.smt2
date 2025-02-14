(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun SaysGoingExtinct (BoundSet BoundSet) Bool)
(declare-fun IsGoingToStarveToDeath (BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((b BoundSet)) (SaysGoingExtinct b a))) (exists ((a BoundSet)) (IsGoingToStarveToDeath a)))))
(check-sat)
(get-model)