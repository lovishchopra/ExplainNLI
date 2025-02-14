(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsBroken (BoundSet) Bool)
(declare-fun IsReceived (BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsBroken a) (IsReceived b)))) (exists ((e BoundSet)) (exists ((d BoundSet)) (and (IsBroken d) (IsReceived e)))))))
(check-sat)
(get-model)