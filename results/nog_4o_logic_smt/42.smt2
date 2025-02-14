(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun PreysOn (BoundSet) Bool)
(declare-fun CanTurnIntoSlipperySlope (BoundSet) Bool)
(assert (not (=> (exists ((b BoundSet)) (exists ((a BoundSet)) (and (PreysOn a) (PreysOn b)))) (exists ((c BoundSet)) (CanTurnIntoSlipperySlope c)))))
(check-sat)
(get-model)