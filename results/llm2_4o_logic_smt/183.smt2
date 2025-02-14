(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsStandingAt (BoundSet BoundSet) Bool)
(declare-fun IsAt (BoundSet BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((b BoundSet)) (IsStandingAt b a))) (and (forall ((e BoundSet)) (forall ((f BoundSet)) (forall ((d BoundSet)) (=> (IsStandingAt d e) (IsAt f e))))) (forall ((g BoundSet)) (forall ((i BoundSet)) (forall ((h BoundSet)) (=> (IsAt g h) (IsStandingAt i h))))))) (exists ((c BoundSet)) (exists ((a BoundSet)) (IsAt c a))))))
(check-sat)
(get-model)