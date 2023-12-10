(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun b () UnboundSet)
(declare-fun c () UnboundSet)
(declare-fun d () UnboundSet)
(declare-fun IsCaught (BoundSet UnboundSet) Bool)
(declare-fun IsThrown (UnboundSet UnboundSet) Bool)
(declare-fun IsAt (UnboundSet BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (IsCaught a b)) (exists ((e BoundSet)) (=> (IsThrown c d) (IsAt c e))))))
(check-sat)
(get-model)