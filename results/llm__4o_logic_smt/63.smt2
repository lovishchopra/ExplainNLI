(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun Failed (BoundSet BoundSet) Bool)
(declare-fun IsAtFaultFor (BoundSet BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((b BoundSet)) (Failed b a))) (forall ((f BoundSet)) (forall ((g BoundSet)) (forall ((e BoundSet)) (forall ((h BoundSet)) (=> (IsAtFaultFor e f) (Failed g h))))))) (exists ((d BoundSet)) (exists ((c BoundSet)) (IsAtFaultFor c d))))))
(check-sat)
(get-model)