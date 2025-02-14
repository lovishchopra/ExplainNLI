(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsLookingOut (BoundSet BoundSet) Bool)
(declare-fun IsLookingAt (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((b BoundSet)) (exists ((c BoundSet)) (exists ((a BoundSet)) (and (IsLookingOut b a) (IsLookingAt b c))))) (exists ((d BoundSet)) (exists ((a BoundSet)) (IsLookingOut d a))))))
(check-sat)
(get-model)