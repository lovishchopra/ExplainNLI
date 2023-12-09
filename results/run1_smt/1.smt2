(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun a () UnboundSet)
(declare-fun b () UnboundSet)
(declare-fun d () UnboundSet)
(declare-fun IsLivedLike (UnboundSet UnboundSet) Bool)
(declare-fun IsGood (BoundSet) Bool)
(declare-fun IsBeautiful (UnboundSet) Bool)
(declare-fun IsAPlace (BoundSet) Bool)
(assert (not (=> (forall ((c BoundSet)) (=> (IsLivedLike a b) (IsGood c))) (=> (exists ((e BoundSet)) (IsBeautiful d)) (IsAPlace e)))))
(check-sat)
(get-model)