(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun MovedTo (BoundSet BoundSet) Bool)
(declare-fun CannotTrust (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((b BoundSet)) (exists ((a BoundSet)) (MovedTo a b))) (exists ((a BoundSet)) (exists ((c BoundSet)) (CannotTrust c a))))))
(check-sat)
(get-model)