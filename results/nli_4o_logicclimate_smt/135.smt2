(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsAsian (BoundSet) Bool)
(declare-fun IsDressedIn (BoundSet BoundSet) Bool)
(declare-fun IsLaughing (BoundSet) Bool)
(declare-fun IsWearing (BoundSet BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsAsian a) (and (IsDressedIn a b) (IsLaughing a))))) (and (forall ((e BoundSet)) (forall ((f BoundSet)) (forall ((g BoundSet)) (=> (IsAsian e) (IsWearing f g))))) (and (forall ((i BoundSet)) (forall ((h BoundSet)) (forall ((j BoundSet)) (=> (IsWearing h i) (IsAsian j))))) (forall ((l BoundSet)) (forall ((k BoundSet)) (forall ((m BoundSet)) (=> (IsLaughing k) (IsWearing l m)))))))) (exists ((c BoundSet)) (exists ((d BoundSet)) (IsWearing c d))))))
(check-sat)
(get-model)