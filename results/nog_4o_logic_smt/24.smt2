(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsGerald (BoundSet) Bool)
(declare-fun Ruined (BoundSet) Bool)
(declare-fun CausedToLeave (BoundSet BoundSet) Bool)
(declare-fun ArePeople (BoundSet) Bool)
(assert (not (=> (exists ((b BoundSet)) (exists ((a BoundSet)) (and (IsGerald a) (Ruined b)))) (exists ((b BoundSet)) (exists ((a BoundSet)) (exists ((c BoundSet)) (and (CausedToLeave a b) (ArePeople c))))))))
(check-sat)
(get-model)