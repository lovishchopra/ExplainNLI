(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun OverpowersErosion (BoundSet) Bool)
(declare-fun IsResultOf (BoundSet BoundSet) Bool)
(declare-fun IsDespite (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((b BoundSet)) (exists ((c BoundSet)) (and (OverpowersErosion c) (IsResultOf a b))))) (exists ((a BoundSet)) (exists ((b BoundSet)) (IsDespite a b))))))
(check-sat)
(get-model)