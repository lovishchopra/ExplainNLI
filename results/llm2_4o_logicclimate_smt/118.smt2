(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsReading (BoundSet) Bool)
(declare-fun HasGroceryTote (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (and (IsReading a) (HasGroceryTote a))) (forall ((f BoundSet)) (forall ((e BoundSet)) (=> (IsReading e) (HasGroceryTote f))))) (exists ((d BoundSet)) (IsReading d)))))
(check-sat)
(get-model)