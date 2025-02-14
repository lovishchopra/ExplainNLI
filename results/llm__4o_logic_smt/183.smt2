(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsStandingAt (BoundSet BoundSet) Bool)
(declare-fun IsAt (BoundSet BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((b BoundSet)) (IsStandingAt b a))) (forall ((f BoundSet)) (forall ((d BoundSet)) (forall ((e BoundSet)) (=> (IsAt d e) (IsStandingAt f e)))))) (exists ((a BoundSet)) (exists ((c BoundSet)) (IsAt c a))))))
(check-sat)
(get-model)