(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsDriving (BoundSet) Bool)
(declare-fun IsOverSpeedLimit (BoundSet BoundSet) Bool)
(declare-fun HasTicket (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsDriving b) (IsOverSpeedLimit b a)))) (exists ((c BoundSet)) (exists ((a BoundSet)) (exists ((d BoundSet)) (and (IsDriving c) (and (IsOverSpeedLimit c a) (not (HasTicket c d))))))))))
(check-sat)
(get-model)