(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsRidingDownRoad (BoundSet) Bool)
(declare-fun IsBetweenTwoCows (BoundSet) Bool)
(declare-fun Exists (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (and (IsRidingDownRoad a) (IsBetweenTwoCows a))) (and (forall ((e BoundSet)) (=> (IsRidingDownRoad e) (Exists e))) (and (forall ((f BoundSet)) (=> (IsBetweenTwoCows f) (Exists f))) (forall ((h BoundSet)) (forall ((g BoundSet)) (=> (IsBetweenTwoCows g) (Exists h))))))) (exists ((a BoundSet)) (exists ((d BoundSet)) (exists ((b BoundSet)) (and (Exists a) (and (Exists d) (Exists b)))))))))
(check-sat)
(get-model)