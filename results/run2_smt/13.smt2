(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun b () UnboundSet)
(declare-fun IsWalkedDown (BoundSet UnboundSet) Bool)
(declare-fun IsOutside (BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (IsWalkedDown a b)) (exists ((c BoundSet)) (IsOutside c)))))
(check-sat)
(get-model)