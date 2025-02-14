(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsInGreatShape (BoundSet) Bool)
(declare-fun IsWorthTheMoney (BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (IsInGreatShape a)) (exists ((c BoundSet)) (IsWorthTheMoney c)))))
(check-sat)
(get-model)