(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsFloodedWith (BoundSet BoundSet) Bool)
(declare-fun IsInWater (BoundSet) Bool)
(declare-fun IsOutside (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsFloodedWith a b) (IsInWater b)))) (and (forall ((e BoundSet)) (forall ((f BoundSet)) (forall ((g BoundSet)) (=> (IsFloodedWith e f) (IsOutside g))))) (forall ((i BoundSet)) (forall ((h BoundSet)) (=> (IsInWater h) (IsOutside i)))))) (exists ((d BoundSet)) (IsOutside d)))))
(check-sat)
(get-model)