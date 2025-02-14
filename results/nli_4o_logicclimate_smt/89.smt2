(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun AtSurface (BoundSet) Bool)
(declare-fun IsVentingInto (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (AtSurface a)) (exists ((c BoundSet)) (exists ((d BoundSet)) (IsVentingInto c d))))))
(check-sat)
(get-model)