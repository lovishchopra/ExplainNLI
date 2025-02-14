(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun ReducesRespectForLife (BoundSet) Bool)
(declare-fun WillBecomeBattlefield (BoundSet) Bool)
(declare-fun WillEndCivilization (BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (ReducesRespectForLife a)) (exists ((c BoundSet)) (and (WillBecomeBattlefield c) (WillEndCivilization c))))))
(check-sat)
(get-model)