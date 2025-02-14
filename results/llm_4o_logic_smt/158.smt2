(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsLittle (BoundSet) Bool)
(declare-fun IsWhite (BoundSet) Bool)
(declare-fun RunsOutside (BoundSet) Bool)
(declare-fun AreBlownBackInWind (BoundSet) Bool)
(declare-fun IsOutside (BoundSet) Bool)
(assert (not (=> (and (exists ((b BoundSet)) (exists ((a BoundSet)) (and (IsLittle a) (and (IsWhite a) (and (RunsOutside a) (AreBlownBackInWind b)))))) (and (forall ((f BoundSet)) (forall ((e BoundSet)) (=> (IsLittle e) (IsOutside f)))) (and (forall ((h BoundSet)) (forall ((g BoundSet)) (=> (IsWhite g) (IsOutside h)))) (and (forall ((i BoundSet)) (forall ((j BoundSet)) (=> (RunsOutside i) (IsOutside j)))) (forall ((k BoundSet)) (forall ((l BoundSet)) (=> (AreBlownBackInWind k) (IsOutside l)))))))) (exists ((d BoundSet)) (IsOutside d)))))
(check-sat)
(get-model)