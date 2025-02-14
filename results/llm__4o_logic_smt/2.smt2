(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsKnittedBy (BoundSet BoundSet) Bool)
(declare-fun IsIn (BoundSet) Bool)
(declare-fun IsWornBy (BoundSet BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((b BoundSet)) (IsKnittedBy a b))) (forall ((f BoundSet)) (forall ((g BoundSet)) (forall ((e BoundSet)) (=> (IsIn e) (IsKnittedBy f g)))))) (exists ((a BoundSet)) (exists ((d BoundSet)) (exists ((c BoundSet)) (and (IsWornBy a c) (IsIn d))))))))
(check-sat)
(get-model)