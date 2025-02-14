(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsDriving (BoundSet) Bool)
(declare-fun IsOverSpeedLimit (BoundSet) Bool)
(declare-fun GotTicket (BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (and (IsDriving a) (IsOverSpeedLimit a))) (exists ((c BoundSet)) (and (IsDriving c) (and (IsOverSpeedLimit c) (GotTicket c)))))))
(check-sat)
(get-model)