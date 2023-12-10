(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsTeacher (BoundSet) Bool)
(declare-fun IsBestClass (BoundSet) Bool)
(declare-fun IsBest (BoundSet) Bool)
(declare-fun IsClass (BoundSet) Bool)
(assert (not (exists ((d BoundSet)) (exists ((e BoundSet)) (=> (IsBest d) (IsClass e))))))
(check-sat)
(get-model)