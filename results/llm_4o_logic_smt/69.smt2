(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsSaidBy (BoundSet BoundSet) Bool)
(declare-fun IsLousyRoleModel (BoundSet) Bool)
(declare-fun IsNotAGoodRoleModel (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((c BoundSet)) (and (IsSaidBy c a) (IsLousyRoleModel a)))) (and (forall ((f BoundSet)) (=> (IsLousyRoleModel f) (IsNotAGoodRoleModel f))) (forall ((g BoundSet)) (=> (IsNotAGoodRoleModel g) (IsLousyRoleModel g))))) (exists ((a BoundSet)) (IsNotAGoodRoleModel a)))))
(check-sat)
(get-model)