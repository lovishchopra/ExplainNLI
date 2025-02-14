(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsCruising (BoundSet) Bool)
(declare-fun IsDownTheStreet (BoundSet) Bool)
(declare-fun AreTogether (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (and (IsCruising a) (IsDownTheStreet a))) (forall ((c BoundSet)) (=> (IsCruising c) (AreTogether c)))) (exists ((a BoundSet)) (AreTogether a)))))
(check-sat)
(get-model)