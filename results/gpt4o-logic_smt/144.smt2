(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsLookingOutWindow (BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (IsLookingOutWindow a)) (exists ((b BoundSet)) (IsLookingOutWindow b)))))
(check-sat)
(get-model)