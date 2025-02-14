(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsWearingHoodedTops (BoundSet) Bool)
(declare-fun IsLaughingWithEachOther (BoundSet) Bool)
(declare-fun IsLaughing (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (and (IsWearingHoodedTops a) (IsLaughingWithEachOther a))) (forall ((d BoundSet)) (forall ((e BoundSet)) (=> (IsLaughingWithEachOther d) (IsLaughing e))))) (exists ((c BoundSet)) (IsLaughing c)))))
(check-sat)
(get-model)