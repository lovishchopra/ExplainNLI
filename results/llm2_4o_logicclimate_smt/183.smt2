(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsStandingAt (BoundSet BoundSet) Bool)
(declare-fun IsAt (BoundSet BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((b BoundSet)) (IsStandingAt a b))) (and (forall ((f BoundSet)) (forall ((g BoundSet)) (forall ((e BoundSet)) (forall ((h BoundSet)) (=> (IsStandingAt e f) (IsAt g h)))))) (forall ((l BoundSet)) (forall ((i BoundSet)) (forall ((j BoundSet)) (forall ((k BoundSet)) (=> (IsAt i j) (IsStandingAt k l)))))))) (exists ((c BoundSet)) (exists ((d BoundSet)) (IsAt c d))))))
(check-sat)
(get-model)