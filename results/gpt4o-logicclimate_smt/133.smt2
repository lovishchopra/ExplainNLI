(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsInMiddleOf (BoundSet BoundSet) Bool)
(declare-fun IsACrowdOf (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((d BoundSet)) (exists ((a BoundSet)) (exists ((c BoundSet)) (and (IsInMiddleOf a c) (IsACrowdOf c d))))) (exists ((e BoundSet)) (exists ((f BoundSet)) (exists ((g BoundSet)) (and (IsInMiddleOf e f) (IsACrowdOf f g))))))))
(check-sat)
(get-model)