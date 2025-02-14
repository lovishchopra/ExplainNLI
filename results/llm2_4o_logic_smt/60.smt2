(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsSmoked (BoundSet) Bool)
(declare-fun IsAgainst (BoundSet BoundSet) Bool)
(declare-fun IsWrong (BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsSmoked a) (IsAgainst a b)))) (exists ((c BoundSet)) (IsWrong c)))))
(check-sat)
(get-model)