(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun Gave (BoundSet BoundSet) Bool)
(declare-fun IsGreedy (BoundSet) Bool)
(declare-fun IsMillionaire (BoundSet) Bool)
(assert (not (=> (exists ((b BoundSet)) (exists ((c BoundSet)) (not (Gave b c)))) (exists ((d BoundSet)) (and (IsGreedy d) (IsMillionaire d))))))
(check-sat)
(get-model)