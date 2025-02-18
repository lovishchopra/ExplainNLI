(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsInBlueTShirt (BoundSet) Bool)
(declare-fun IsTakingPicture (BoundSet) Bool)
(declare-fun WalksBehind (BoundSet BoundSet) Bool)
(declare-fun HasUmbrella (BoundSet) Bool)
(declare-fun IsOutdoors (BoundSet) Bool)
(assert (not (=> (and (exists ((d BoundSet)) (exists ((b BoundSet)) (exists ((c BoundSet)) (and (IsInBlueTShirt c) (and (IsTakingPicture c) (and (WalksBehind d b) (HasUmbrella d))))))) (and (forall ((h BoundSet)) (forall ((g BoundSet)) (=> (IsTakingPicture g) (IsOutdoors h)))) (and (forall ((j BoundSet)) (forall ((i BoundSet)) (forall ((k BoundSet)) (=> (WalksBehind i j) (IsTakingPicture k))))) (and (forall ((m BoundSet)) (forall ((l BoundSet)) (forall ((n BoundSet)) (=> (IsTakingPicture l) (WalksBehind m n))))) (forall ((o BoundSet)) (forall ((p BoundSet)) (forall ((q BoundSet)) (=> (IsOutdoors o) (WalksBehind p q))))))))) (exists ((e BoundSet)) (exists ((f BoundSet)) (exists ((b BoundSet)) (and (IsTakingPicture e) (and (IsOutdoors e) (WalksBehind f b)))))))))
(check-sat)
(get-model)