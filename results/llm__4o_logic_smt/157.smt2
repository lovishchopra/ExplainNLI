(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun Scales (BoundSet BoundSet) Bool)
(declare-fun IsRockClimbing (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((b BoundSet)) (Scales a b))) (and (forall ((d BoundSet)) (forall ((c BoundSet)) (=> (Scales c d) (IsRockClimbing c)))) (forall ((f BoundSet)) (forall ((e BoundSet)) (=> (IsRockClimbing e) (Scales e f)))))) (exists ((a BoundSet)) (IsRockClimbing a)))))
(check-sat)
(get-model)