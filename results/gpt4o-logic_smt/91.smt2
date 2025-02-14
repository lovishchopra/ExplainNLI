(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsMeanTeacher (BoundSet) Bool)
(declare-fun IsMeanPerson (BoundSet) Bool)
(declare-fun RaisedGrade (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (and (IsMeanTeacher a) (IsMeanPerson a))) (exists ((a BoundSet)) (exists ((d BoundSet)) (not (RaisedGrade a d)))))))
(check-sat)
(get-model)