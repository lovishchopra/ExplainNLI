(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun Ordered (BoundSet BoundSet) Bool)
(declare-fun Killed (BoundSet BoundSet) Bool)
(declare-fun IsInPrison (BoundSet) Bool)
(assert (not (=> (exists ((b BoundSet)) (exists ((a BoundSet)) (exists ((c BoundSet)) (and (Ordered a b) (Killed c b))))) (exists ((a BoundSet)) (not (IsInPrison a))))))
(check-sat)
(get-model)