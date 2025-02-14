(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun HasNotAccelerated (BoundSet) Bool)
(declare-fun IsNotAProblem (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (HasNotAccelerated a)) (forall ((c BoundSet)) (forall ((d BoundSet)) (=> (HasNotAccelerated c) (IsNotAProblem d))))) (exists ((b BoundSet)) (IsNotAProblem b)))))
(check-sat)
(get-model)