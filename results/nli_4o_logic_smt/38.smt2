(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun DrivingOverSpeedLimit (BoundSet) Bool)
(declare-fun ReceivedTicket (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((b BoundSet)) (DrivingOverSpeedLimit b)) (exists ((c BoundSet)) (exists ((d BoundSet)) (and (DrivingOverSpeedLimit c) (ReceivedTicket c d)))))))
(check-sat)
(get-model)