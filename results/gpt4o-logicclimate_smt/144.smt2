(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsLookingOutWindow (BoundSet) Bool)
(declare-fun IsLookingAt (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((b BoundSet)) (exists ((c BoundSet)) (and (IsLookingOutWindow b) (IsLookingAt c b)))) (exists ((d BoundSet)) (IsLookingOutWindow d)))))
(check-sat)
(get-model)