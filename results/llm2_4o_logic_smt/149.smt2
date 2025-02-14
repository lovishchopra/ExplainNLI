(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsInRunningClothes (BoundSet) Bool)
(declare-fun IsStretching (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (and (IsInRunningClothes a) (IsStretching a))) (forall ((e BoundSet)) (forall ((d BoundSet)) (=> (IsStretching d) (IsInRunningClothes e))))) (exists ((c BoundSet)) (IsStretching c)))))
(check-sat)
(get-model)