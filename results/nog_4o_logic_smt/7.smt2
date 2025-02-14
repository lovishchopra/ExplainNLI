(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun GaveMoney (BoundSet BoundSet) Bool)
(declare-fun IsGivenTo (BoundSet BoundSet) Bool)
(declare-fun IsGreedy (BoundSet) Bool)
(declare-fun IsMillionaire (BoundSet) Bool)
(assert (not (=> (exists ((b BoundSet)) (exists ((a BoundSet)) (and (not (GaveMoney a b)) (IsGivenTo b a)))) (exists ((c BoundSet)) (and (IsGreedy c) (IsMillionaire c))))))
(check-sat)
(get-model)