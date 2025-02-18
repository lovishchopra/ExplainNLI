(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun AreHavingGreatTime (BoundSet) Bool)
(declare-fun AreLookingFor (BoundSet BoundSet) Bool)
(declare-fun IsHappy (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((b BoundSet)) (and (AreHavingGreatTime a) (AreLookingFor a b)))) (and (forall ((c BoundSet)) (=> (AreHavingGreatTime c) (IsHappy c))) (and (forall ((d BoundSet)) (=> (IsHappy d) (AreHavingGreatTime d))) (and (forall ((f BoundSet)) (forall ((e BoundSet)) (=> (AreLookingFor e f) (IsHappy e)))) (forall ((g BoundSet)) (forall ((h BoundSet)) (=> (IsHappy g) (AreLookingFor g h)))))))) (exists ((a BoundSet)) (IsHappy a)))))
(check-sat)
(get-model)