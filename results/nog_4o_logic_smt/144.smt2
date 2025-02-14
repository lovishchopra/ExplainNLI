(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsLookingOut (BoundSet BoundSet) Bool)
(declare-fun IsBeingObserved (BoundSet) Bool)
(assert (not (=> (exists ((b BoundSet)) (exists ((a BoundSet)) (exists ((c BoundSet)) (and (IsLookingOut a b) (IsBeingObserved c))))) (exists ((d BoundSet)) (exists ((e BoundSet)) (IsLookingOut d e))))))
(check-sat)
(get-model)