(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun SawShoeSale (BoundSet) Bool)
(declare-fun CrossedRoad (BoundSet) Bool)
(declare-fun IsForShoeSale (BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (SawShoeSale a)) (exists ((a BoundSet)) (and (CrossedRoad a) (IsForShoeSale a))))))
(check-sat)
(get-model)