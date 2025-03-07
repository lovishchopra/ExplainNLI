(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsAsian (BoundSet) Bool)
(declare-fun IsDressedIn (BoundSet BoundSet) Bool)
(declare-fun IsLaughing (BoundSet) Bool)
(declare-fun IsWearing (BoundSet BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsAsian a) (and (IsDressedIn a b) (IsLaughing a))))) (and (forall ((e BoundSet)) (forall ((f BoundSet)) (forall ((g BoundSet)) (=> (IsDressedIn e f) (IsWearing e g))))) (forall ((j BoundSet)) (forall ((i BoundSet)) (forall ((h BoundSet)) (=> (IsWearing h i) (IsDressedIn h j))))))) (exists ((a BoundSet)) (exists ((c BoundSet)) (IsWearing a c))))))
(check-sat)
(get-model)