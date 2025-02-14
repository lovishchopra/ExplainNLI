(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun RefutesArguments (BoundSet BoundSet) Bool)
(declare-fun IsInCounterargument (BoundSet BoundSet) Bool)
(declare-fun HasFallacy (BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((b BoundSet)) (RefutesArguments a b))) (exists ((c BoundSet)) (exists ((e BoundSet)) (and (IsInCounterargument c e) (HasFallacy e)))))))
(check-sat)
(get-model)