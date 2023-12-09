(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun c () UnboundSet)
(declare-fun d () UnboundSet)
(declare-fun ~IsLiked (BoundSet BoundSet) Bool)
(declare-fun IsHappy (UnboundSet) Bool)
(declare-fun IsWornBy (UnboundSet) Bool)
(declare-fun IsPartOfFamily (BoundSet) Bool)
(assert (not (IsPartOfFamily e)))
(check-sat)
(get-model)