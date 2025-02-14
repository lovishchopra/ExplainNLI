(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsNotAtSchool (BoundSet) Bool)
(declare-fun IsOnFamilyTrip (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (IsNotAtSchool a)) (forall ((d BoundSet)) (=> (IsOnFamilyTrip d) (IsNotAtSchool d)))) (exists ((a BoundSet)) (IsOnFamilyTrip a)))))
(check-sat)
(get-model)