(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsPerchedOn (BoundSet BoundSet) Bool)
(declare-fun IsPerchingIn (BoundSet BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((b BoundSet)) (IsPerchedOn a b))) (forall ((f BoundSet)) (forall ((e BoundSet)) (forall ((d BoundSet)) (=> (IsPerchedOn d e) (IsPerchingIn d f)))))) (exists ((c BoundSet)) (exists ((a BoundSet)) (IsPerchingIn a c))))))
(check-sat)
(get-model)