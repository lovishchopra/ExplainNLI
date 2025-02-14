(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsJumpingOver (BoundSet BoundSet) Bool)
(declare-fun IsLow (BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsJumpingOver a b) (IsLow b)))) (exists ((d BoundSet)) (exists ((c BoundSet)) (IsJumpingOver c d))))))
(check-sat)
(get-model)