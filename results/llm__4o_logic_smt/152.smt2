(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsPerchedOn (BoundSet BoundSet) Bool)
(declare-fun IsPerchingIn (BoundSet BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((b BoundSet)) (IsPerchedOn a b))) (and (forall ((f BoundSet)) (forall ((d BoundSet)) (forall ((e BoundSet)) (=> (IsPerchedOn d e) (IsPerchingIn d f))))) (forall ((g BoundSet)) (forall ((i BoundSet)) (forall ((h BoundSet)) (=> (IsPerchingIn g h) (IsPerchedOn g i))))))) (exists ((a BoundSet)) (exists ((c BoundSet)) (IsPerchingIn a c))))))
(check-sat)
(get-model)