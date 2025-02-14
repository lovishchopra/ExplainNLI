(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsSkateboarding (BoundSet) Bool)
(declare-fun Watches (BoundSet BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (IsSkateboarding a)) (forall ((d BoundSet)) (forall ((f BoundSet)) (forall ((e BoundSet)) (=> (IsSkateboarding d) (Watches e f)))))) (exists ((c BoundSet)) (exists ((b BoundSet)) (and (Watches b c) (IsSkateboarding c)))))))
(check-sat)
(get-model)