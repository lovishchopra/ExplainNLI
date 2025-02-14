(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsHavingGreatTime (BoundSet) Bool)
(declare-fun IsLookingForSeashells (BoundSet BoundSet) Bool)
(declare-fun IsHappy (BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((c BoundSet)) (and (IsHavingGreatTime a) (IsLookingForSeashells a c)))) (exists ((a BoundSet)) (IsHappy a)))))
(check-sat)
(get-model)