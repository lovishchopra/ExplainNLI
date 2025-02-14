(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsMadeUpOfVaryingAges (BoundSet) Bool)
(declare-fun IsPerforming (BoundSet) Bool)
(declare-fun IsSinging (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (and (IsMadeUpOfVaryingAges a) (IsPerforming a))) (forall ((e BoundSet)) (forall ((d BoundSet)) (=> (IsPerforming d) (IsSinging e))))) (exists ((c BoundSet)) (IsSinging c)))))
(check-sat)
(get-model)