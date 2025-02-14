(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsWearingCap (BoundSet) Bool)
(declare-fun IsNotWearingShirt (BoundSet) Bool)
(declare-fun IsLayingOn (BoundSet BoundSet) Bool)
(declare-fun Relaxes (BoundSet) Bool)
(declare-fun IsOn (BoundSet BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsWearingCap b) (and (IsNotWearingShirt b) (IsLayingOn b a))))) (and (forall ((f BoundSet)) (forall ((g BoundSet)) (=> (IsWearingCap f) (Relaxes g)))) (and (forall ((i BoundSet)) (forall ((h BoundSet)) (=> (Relaxes h) (IsWearingCap i)))) (and (forall ((j BoundSet)) (forall ((l BoundSet)) (forall ((k BoundSet)) (=> (IsWearingCap j) (IsOn k l))))) (and (forall ((n BoundSet)) (forall ((m BoundSet)) (=> (IsNotWearingShirt m) (Relaxes n)))) (and (forall ((p BoundSet)) (forall ((o BoundSet)) (forall ((q BoundSet)) (=> (IsLayingOn o p) (Relaxes q))))) (forall ((r BoundSet)) (forall ((t BoundSet)) (forall ((s BoundSet)) (=> (IsLayingOn r s) (IsOn t s))))))))))) (exists ((a BoundSet)) (exists ((d BoundSet)) (and (Relaxes d) (IsOn d a)))))))
(check-sat)
(get-model)