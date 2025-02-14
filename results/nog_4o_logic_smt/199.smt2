(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsChild (BoundSet) Bool)
(declare-fun Rides (BoundSet BoundSet) Bool)
(declare-fun IsDaytime (BoundSet) Bool)
(assert (not (=> (exists ((b BoundSet)) (exists ((a BoundSet)) (and (IsChild a) (Rides a b)))) (exists ((b BoundSet)) (exists ((a BoundSet)) (exists ((c BoundSet)) (and (IsChild a) (and (Rides a b) (IsDaytime c)))))))))
(check-sat)
(get-model)