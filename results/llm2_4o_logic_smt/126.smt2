(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsSmall (BoundSet) Bool)
(declare-fun IsInPinkDress (BoundSet) Bool)
(declare-fun PlaysDrumPads (BoundSet) Bool)
(declare-fun UsesSticks (BoundSet) Bool)
(declare-fun PlaysDrums (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (and (IsSmall a) (and (IsInPinkDress a) (and (PlaysDrumPads a) (UsesSticks a))))) (and (forall ((g BoundSet)) (forall ((h BoundSet)) (=> (PlaysDrums g) (IsSmall h)))) (and (forall ((i BoundSet)) (forall ((j BoundSet)) (=> (PlaysDrums i) (IsInPinkDress j)))) (and (forall ((l BoundSet)) (forall ((k BoundSet)) (=> (PlaysDrumPads k) (PlaysDrums l)))) (and (forall ((n BoundSet)) (forall ((m BoundSet)) (=> (PlaysDrums m) (PlaysDrumPads n)))) (and (forall ((o BoundSet)) (forall ((p BoundSet)) (=> (UsesSticks o) (PlaysDrums p)))) (forall ((q BoundSet)) (forall ((r BoundSet)) (=> (PlaysDrums q) (UsesSticks r)))))))))) (exists ((e BoundSet)) (PlaysDrums e)))))
(check-sat)
(get-model)