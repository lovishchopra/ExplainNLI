(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsDusty (BoundSet) Bool)
(declare-fun IsRunning (BoundSet) Bool)
(declare-fun IsOnPath (BoundSet BoundSet) Bool)
(declare-fun IsInGrass (BoundSet BoundSet) Bool)
(declare-fun IsOutside (BoundSet) Bool)
(assert (not (=> (exists ((b BoundSet)) (exists ((a BoundSet)) (exists ((c BoundSet)) (and (IsDusty a) (and (IsRunning a) (and (IsOnPath a b) (IsInGrass b c))))))) (exists ((d BoundSet)) (and (IsOutside d) (IsRunning d))))))
(check-sat)
(get-model)