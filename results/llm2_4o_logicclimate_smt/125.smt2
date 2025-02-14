(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsHavingGreatTime (BoundSet) Bool)
(declare-fun IsLookingFor (BoundSet BoundSet) Bool)
(declare-fun IsHappy (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsHavingGreatTime a) (IsLookingFor a b)))) (and (forall ((d BoundSet)) (forall ((e BoundSet)) (=> (IsHavingGreatTime d) (IsHappy e)))) (and (forall ((f BoundSet)) (forall ((g BoundSet)) (=> (IsHappy f) (IsHavingGreatTime g)))) (and (forall ((h BoundSet)) (forall ((i BoundSet)) (forall ((j BoundSet)) (=> (IsLookingFor h i) (IsHappy j))))) (forall ((l BoundSet)) (forall ((m BoundSet)) (forall ((k BoundSet)) (=> (IsHappy k) (IsLookingFor l m))))))))) (exists ((c BoundSet)) (IsHappy c)))))
(check-sat)
(get-model)