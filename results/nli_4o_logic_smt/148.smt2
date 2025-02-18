(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun SingTogether (BoundSet) Bool)
(declare-fun AreWearing (BoundSet BoundSet) Bool)
(declare-fun AreSinging (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((b BoundSet)) (and (SingTogether a) (AreWearing a b)))) (and (forall ((e BoundSet)) (forall ((d BoundSet)) (=> (SingTogether d) (AreSinging e)))) (and (forall ((g BoundSet)) (forall ((f BoundSet)) (=> (AreSinging f) (SingTogether g)))) (forall ((i BoundSet)) (forall ((h BoundSet)) (forall ((j BoundSet)) (=> (AreSinging h) (AreWearing i j)))))))) (exists ((c BoundSet)) (AreSinging c)))))
(check-sat)
(get-model)