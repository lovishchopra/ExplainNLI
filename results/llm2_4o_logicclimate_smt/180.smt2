(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsInSuit (BoundSet) Bool)
(declare-fun IsCheering (BoundSet) Bool)
(declare-fun IsInLibrary (BoundSet) Bool)
(declare-fun IsInFrontOfChildren (BoundSet) Bool)
(declare-fun IsNearChildren (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (and (IsInSuit a) (and (IsCheering a) (and (IsInLibrary a) (IsInFrontOfChildren a))))) (and (forall ((f BoundSet)) (forall ((g BoundSet)) (=> (IsCheering f) (IsInSuit g)))) (and (forall ((h BoundSet)) (forall ((i BoundSet)) (=> (IsNearChildren h) (IsInSuit i)))) (and (forall ((j BoundSet)) (forall ((k BoundSet)) (=> (IsCheering j) (IsNearChildren k)))) (and (forall ((l BoundSet)) (forall ((m BoundSet)) (=> (IsNearChildren l) (IsCheering m)))) (and (forall ((o BoundSet)) (forall ((n BoundSet)) (=> (IsNearChildren n) (IsInLibrary o)))) (and (forall ((p BoundSet)) (forall ((q BoundSet)) (=> (IsCheering p) (IsInFrontOfChildren q)))) (and (forall ((r BoundSet)) (forall ((s BoundSet)) (=> (IsInFrontOfChildren r) (IsNearChildren s)))) (forall ((u BoundSet)) (forall ((t BoundSet)) (=> (IsNearChildren t) (IsInFrontOfChildren u)))))))))))) (exists ((d BoundSet)) (and (IsCheering d) (IsNearChildren d))))))
(check-sat)
(get-model)