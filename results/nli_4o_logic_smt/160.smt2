(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsWearing (BoundSet BoundSet) Bool)
(declare-fun IsLaughingWithEachOther (BoundSet) Bool)
(declare-fun IsLaughing (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsWearing a b) (IsLaughingWithEachOther a)))) (and (forall ((e BoundSet)) (forall ((d BoundSet)) (=> (IsLaughingWithEachOther d) (IsLaughing e)))) (forall ((g BoundSet)) (forall ((f BoundSet)) (=> (IsLaughing f) (IsLaughingWithEachOther g)))))) (exists ((c BoundSet)) (IsLaughing c)))))
(check-sat)
(get-model)