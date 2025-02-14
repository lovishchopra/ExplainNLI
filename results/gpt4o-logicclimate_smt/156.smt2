(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsMadeUpOf (BoundSet BoundSet) Bool)
(declare-fun IsPerforming (BoundSet) Bool)
(declare-fun IsSinging (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsMadeUpOf a b) (IsPerforming a)))) (and (forall ((d BoundSet)) (forall ((e BoundSet)) (=> (IsPerforming d) (IsSinging e)))) (forall ((f BoundSet)) (forall ((g BoundSet)) (=> (IsSinging f) (IsPerforming g)))))) (exists ((c BoundSet)) (IsSinging c)))))
(check-sat)
(get-model)